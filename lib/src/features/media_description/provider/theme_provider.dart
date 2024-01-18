import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/features/media_description/models/theme_model.dart';

Future<ThemeModel?> getThemeFromIdMal(int malId) async {
  final res = await Dio().get('https://api.jikan.moe/v4/anime/$malId/full');
  if (res.statusCode == 200) {
    final data = res.data;
    return ThemeModel.fromJson(data);
  }
  return null;
}

final themeProvider =
    FutureProvider.family<ThemeModel?, int?>((ref, idMal) async {
  if (idMal == null) return null;
  final data = await compute(getThemeFromIdMal, idMal);
  return data;
});
