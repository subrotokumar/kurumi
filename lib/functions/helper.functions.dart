import 'package:anilist/medialist_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive/hive.dart';
import 'package:kurumi/provider/provider.dart';

Future<void> clearMediaListCache(WidgetRef ref, {String? accessToken}) async {
  final mediaListBox = Hive.box('mediaListBox');
  await mediaListBox.clear();
  if (accessToken == null) accessToken = ref.read(accessTokenProvider);
  //print('access token ' + accessToken.toString());
  late HttpLink httpLink;
  if (accessToken == null) {
    httpLink = HttpLink('https://graphql.anilist.co');
  } else {
    httpLink = HttpLink(
      'https://graphql.anilist.co',
      defaultHeaders: {'Authorization': 'Bearer $accessToken'},
    );
  }
  final store = HiveStore(mediaListBox);
  final cache = Cache(store: store, possibleTypes: possibleTypesMap);
  final client = Client(
    link: httpLink,
    cache: cache,
  );
  ref.read(mediaListClientProvider.notifier).update((state) => client);
}

Future<void> renderMediaList({
  required GMediaListStatus status,
  required WidgetRef ref,
}) async {
  final anilistUserId = ref.read(userId);
  final client = ref.read(mediaListClientProvider);
  final req = GMediaListCollectionReq(
    (b) => b
      ..vars.status = status
      ..vars.type = GMediaType.ANIME
      ..vars.userId = anilistUserId,
  );
  await client?.request(req).first;
}
