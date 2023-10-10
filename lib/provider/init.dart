import 'dart:async';

import 'package:anilist/userid.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kurumi/provider/provider.dart';

final deepLinkProvider = StateProvider<String?>((ref) => null);

final initStatus = StateNotifierProvider<InitStatusNotifier, bool>(
  (ref) => InitStatusNotifier(false, ref),
);

class InitStatusNotifier extends StateNotifier<bool> {
  Ref ref;
  InitStatusNotifier(super.state, this.ref);

  Future<bool> initialize() async {
    final pref = await SharedPreferences.getInstance();
    ref.read(sharedfPrefProvider);
    AndroidOptions getAndroidOptions() =>
        const AndroidOptions(encryptedSharedPreferences: true);
    const flutterSecureStorage = FlutterSecureStorage();
    final accessToken = await flutterSecureStorage.read(
      key: 'AniListAccessToken',
      aOptions: getAndroidOptions(),
    );
    await Hive.initFlutter();
    final box = await Hive.openBox('anilist_graphql');
    final last = DateTime.tryParse(pref.getString('last_cache_cleared') ?? '');
    if (last == null) {
    } else if (DateTime.now().difference(last).inDays >= 1) {
      await box.clear();
      pref.setString('last_cache_cleared', DateTime.now().toString());
    }
    final mediaListBox = await Hive.openBox('mediaListBox');

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
    if (pref.containsKey('DefaultDiscoverPage')) {
      if (pref.getString('DefaultDiscoverPage') == 'MANGA') {
        ref.read(discoverTabProvider.notifier).state = GMediaType.MANGA;
      }
    }
    final isLoggedIn = pref.getBool('isLoggedIn') ?? false;
    state = (isLoggedIn && accessToken != null);
    return state;
  }
}
