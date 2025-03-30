import 'package:anilist/anilist.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kurumi/src/provider/provider.dart';

Future appLogIn(WidgetRef ref) async {
  const flutterSecureStorage = FlutterSecureStorage();
  final accessToken =
      await flutterSecureStorage.read(key: 'AniListAccessToken');
  await Hive.initFlutter();
  final box = await Hive.openBox('anilist_graphql');
  await box.clear();
  final store = HiveStore(box);
  final cache = Cache(store: store, possibleTypes: possibleTypesMap);

  late HttpLink httpLink;
  if (accessToken == null) {
    httpLink = HttpLink('https://graphql.anilist.co');
  } else {
    httpLink = HttpLink(
      'https://graphql.anilist.co',
      defaultHeaders: {'Authorization': 'Bearer $accessToken'},
    );
  }
  final client = Client(link: httpLink, cache: cache);

  ref.read(accessTokenProvider.notifier).update((state) => accessToken);
  ref.read(clientProvider.notifier).update((state) => client);
  client.request(GUserIDReq()).listen((event) {
    ref.watch(userId.notifier).update((state) => event.data?.Viewer?.id ?? 0);
  });
}
