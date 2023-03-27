import 'dart:async';

import 'package:anilist/userid.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/config/app_router.dart';
import 'package:kurumi/main.dart';

// final accessTokenProvider = StateProvider<String?>((ref) => null);

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

  Future<void> initialize(BuildContext context) async {
    final flutterSecureStorage = FlutterSecureStorage();
    final isAccessToken =
        await flutterSecureStorage.containsKey(key: 'AniListAccessToken');
    final accessToken =
        await flutterSecureStorage.read(key: 'AniListAccessToken');
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

    final store = HiveStore(box);
    final cache = Cache(store: store, possibleTypes: possibleTypesMap);
    final client = Client(
      link: httpLink,
      cache: cache,
    );
    ref.read(accessTokenProvider.notifier).update((state) => accessToken);
    ref.read(clientProvider.notifier).update((state) => client);

    final store1 = HiveStore(mediaListBox);
    final cache1 = Cache(store: store1, possibleTypes: possibleTypesMap);
    final client1 = Client(
      link: httpLink,
      cache: cache1,
    );
    ref.read(mediaListClientProvider.notifier).update((state) => client1);
    // await ref
    //     .read(mediaListClientProvider.notifier)
    //     .setClient(accessToken, 'mediaListBox');
    // await ref.read(mediaListClientProvider.notifier).reset();
    client.request(GUserIDReq()).listen((event) {
      ref.watch(userId.notifier).update((state) => event.data?.Viewer?.id ?? 0);
    });
    print(ref.read(accessTokenProvider));
    final pref = await SharedPreferences.getInstance();
    final isLoggedIn = pref.getBool('isLoggedIn') ?? false;
    // context.goNamed(AppRouteConstant.MediaScreen.name);
    // return;
    timer = Timer(Duration(seconds: 0), () {
      if (isLoggedIn && isAccessToken) {
        context.goNamed(AppRouteConstant.HomeScreen.name);
      } else {
        context.goNamed(AppRouteConstant.LoginScreen.name);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    initialize(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Card(),
            LottieBuilder.asset('assets/lotties/gibli-tribute.json',
                width: 300),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Kurumi',
                style: GoogleFonts.poppins(
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
