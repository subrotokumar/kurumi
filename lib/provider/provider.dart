import 'package:anilist/anilist.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/core/enum/enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

final discoverTabProvider = StateProvider<GMediaType>(
  (ref) => GMediaType.ANIME,
);

final prefProvider =
    FutureProvider<SharedPreferences>((ref) => SharedPreferences.getInstance());

final sharedfPrefProvider =
    StateNotifierProvider<SharedPreferencesNotifier, SharedPreferences?>((ref) {
  return SharedPreferencesNotifier(ref);
});

class SharedPreferencesNotifier extends StateNotifier<SharedPreferences?> {
  final Ref ref;
  SharedPreferencesNotifier(this.ref) : super(null) {
    _init();
  }

  _init() async {
    state = await SharedPreferences.getInstance();
  }

  bool get bottomSearchBar => state!.getBool('bottomSearchBar') ?? false;
  Future<bool> setBottomSearchBar(bool value) async =>
      await state!.setBool('bottomSearchBar', value);

  SearchView get defaultSearchView =>
      switch (state!.getString('DefaultSearchView')) {
        'GRID' => SearchView.LIST,
        _ => SearchView.GRID,
      };

  Future<bool> toggleDefaultSearchView() async {
    final value = switch (state!.getString('DefaultSearchView')) {
      'GRID' => 'LIST',
      _ => 'GRID',
    };
    return await state!.setString('DefaultSearchView', value);
  }
}

// * STATE Provider
final accessTokenProvider = StateProvider<String?>((ref) => null);
final clientProvider = StateProvider<Client?>((ref) => null);
final userId = StateProvider<int>((ref) => 0);
final mediaListClientProvider = StateProvider<Client?>((ref) => null);
