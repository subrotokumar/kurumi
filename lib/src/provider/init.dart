import 'dart:async';
import 'package:anilist/anilist.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kurumi/src/provider/provider.dart';

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

    final accessToken = await FlutterSecureStorage().read(
      key: 'AniListAccessToken',
      aOptions: const AndroidOptions(encryptedSharedPreferences: true),
    );
    await Hive.initFlutter();
    final box = await Hive.openBox('anilist_graphql');
    final last = DateTime.tryParse(pref.getString('lastCacheCleared') ?? '');
    final now = DateTime.now();
    if (last == null) {
    } else if (now.month != last.month || now.difference(last).inDays >= 1) {
      await box.clear();
      pref.setString('lastCacheCleared', now.toString());
    }
    final mediaListBox = await Hive.openBox('mediaListBox');

    await Clipboard.setData(ClipboardData(text: accessToken ?? ""));

    HttpLink httpLink = HttpLink(
      'https://graphql.anilist.co',
      defaultHeaders: accessToken == null
          ? {}
          : {'Authorization': 'Bearer $accessToken'},
    );

    final store = HiveStore(box);
    final cache = Cache(store: store, possibleTypes: possibleTypesMap);
    final client = Client(link: httpLink, cache: cache);
    ref.read(accessTokenProvider.notifier).state = accessToken;
    ref.read(clientProvider.notifier).state = client;

    final store1 = HiveStore(mediaListBox);
    final cache1 = Cache(store: store1, possibleTypes: possibleTypesMap);
    final client1 = Client(
      link: httpLink,
      cache: cache1,
      defaultFetchPolicies: {OperationType.query: FetchPolicy.CacheAndNetwork},
    );
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
