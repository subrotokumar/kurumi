import 'dart:async';

import 'package:anilist/userid.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kurumi/core/constants/asset.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/routes/app_router.dart';
import 'package:kurumi/main.dart';
import 'package:kurumi/provider/provider.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  Timer? timer;

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  initState() {
    initialize();
    super.initState();
  }

  Future<void> initialize() async {
    AndroidOptions _getAndroidOptions() => const AndroidOptions(
          encryptedSharedPreferences: true,
        );
    final flutterSecureStorage = FlutterSecureStorage();
    final accessToken = await flutterSecureStorage.read(
      key: 'AniListAccessToken',
      aOptions: _getAndroidOptions(),
    );
    //print(accessToken);
    await Hive.initFlutter();
    final box = await Hive.openBox('anilist_graphql');
    await box.clear();
    final mediaListBox = await Hive.openBox('mediaListBox');
    await mediaListBox.clear();

    late HttpLink httpLink;
    if (accessToken == null) {
      httpLink = HttpLink('https://graphql.anilist.co');
    } else {
      httpLink = HttpLink(
        'https://graphql.anilist.co',
        defaultHeaders: {'Authorization': 'Bearer $accessToken'},
      );
    }
    final policy = {
      OperationType.query: FetchPolicy.CacheAndNetwork,
    };
    final store = HiveStore(box);
    final cache = Cache(store: store, possibleTypes: possibleTypesMap);
    final client = Client(
      link: httpLink,
      cache: cache,
    );
    ref.read(accessTokenProvider.notifier).state = accessToken;
    ref.read(clientProvider.notifier).state = client;

    final store1 = HiveStore(mediaListBox);
    final cache1 = Cache(store: store1, possibleTypes: possibleTypesMap);
    final client1 =
        Client(link: httpLink, cache: cache1, defaultFetchPolicies: policy);
    ref.read(mediaListClientProvider.notifier).state = client1;
    final event = await client.request(GUserIDReq()).first;
    if (event.data != null) {
      ref.read(userId.notifier).state = event.data?.Viewer?.id ?? 0;
    }
    final pref = await SharedPreferences.getInstance();
    if (pref.containsKey('DefaultDiscoverPage')) {
      if (pref.getString('DefaultDiscoverPage') == 'MANGA')
        ref.read(discoverTabProvider.notifier).state = GMediaType.MANGA;
    }
    final isLoggedIn = pref.getBool('isLoggedIn') ?? false;
    timer = Timer(
      Duration(seconds: 0),
      () {
        if (isLoggedIn && accessToken != null) {
          context.goNamed(AppRouteConstant.HomeScreen.name);
        } else {
          context.goNamed(AppRouteConstant.LoginScreen.name);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Card(),
            LottieBuilder.asset(
              LottieAssets.ghibli,
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Kurumi',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
