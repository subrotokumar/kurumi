import 'package:anilist/media_detail_query.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final discoverTabProvider = StateProvider<GMediaType>(
  (ref) => GMediaType.ANIME,
);

final prefProvider =
    FutureProvider<SharedPreferences>((ref) => SharedPreferences.getInstance());

// * STATE Provider
final accessTokenProvider = StateProvider<String?>((ref) => null);
final clientProvider = StateProvider<Client?>((ref) => null);
final userId = StateProvider<int>((ref) => 0);
final mediaListClientProvider = StateProvider<Client?>((ref) => null);
