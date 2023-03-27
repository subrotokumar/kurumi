import 'package:anilist/graphql/__generated__/schema.schema.gql.dart';
import 'package:anilist/graphql_client.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FerryClient {
  final Client? client;
  final String? accessToken;
  final Box<dynamic>? box;
  FerryClient({
    this.client,
    this.accessToken,
    this.box,
  });

  FerryClient copyWith({
    Client? client,
    String? accessToken,
    Box? box,
  }) {
    return FerryClient(
      client: client ?? this.client,
      accessToken: accessToken ?? this.accessToken,
      box: box ?? this.box,
    );
  }
}

class FerryClientNotifier extends StateNotifier<FerryClient?> {
  FerryClientNotifier() : super(null);

  Future<void> setClient(String? accessToken, String box) async {
    final mediaListBox = Hive.box(box);
    await mediaListBox.clear();
    state = state?.copyWith(accessToken: accessToken, box: mediaListBox);
    state = state?.copyWith(client: initClient(accessToken: accessToken));
  }

  Future<void> reset() async {
    await state?.box?.clear();
    final store = HiveStore(state!.box!);
    final cache = Cache(store: store, possibleTypes: possibleTypesMap);

    late HttpLink httpLink;
    if (state?.accessToken == null) {
      httpLink = HttpLink('https://graphql.anilist.co');
    } else {
      httpLink = HttpLink(
        'https://graphql.anilist.co',
        defaultHeaders: {'Authorization': 'Bearer $state?.accessToken'},
      );
    }
    final client = Client(
      link: httpLink,
      cache: cache,
    );
    state = state?.copyWith(client: client);
  }
}
