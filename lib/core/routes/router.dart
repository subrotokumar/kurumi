// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kurumi/features/character_detail/character_detail_screen.dart';

export 'package:go_router/go_router.dart';

part 'router.g.dart';

class AppRouteConstant {
  static Route HomeScreen = Route('home', '/home');
  static Route SplashScreen = Route('splash', '/splash');
  static Route LoginScreen = Route('login', '/login');
  static Route ErrorScreen = Route('error', '/error');
  static Route SearchScreen = Route('search', '/search');
  static Route SettingScreen = Route('settings', '/settings');
  static Route MediaScreen = Route('media', '/media');
  static Route Character = Route('character-media', '/character/media');
  static Route Review = Route('review', '/review');
  static Route ACTIVITY = Route('activity', '/activity');
  static Route VAScreen = Route('staff', '/staff/:id/:name');
  static Route FavAnimeScreen = Route('FavAnime', '/user/:username/favorites');
  static Route SearchFilterScreen = Route('FilterScreen', '/search/filter');
}

class Route {
  final String name;
  final String path;
  Route(this.name, this.path);
}

@TypedGoRoute<CharacterDetailRoute>(path: '/character/:id/:name')
class CharacterDetailRoute extends GoRouteData {
  final int id;
  final String name;
  const CharacterDetailRoute({required this.id, required this.name});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      CharacterDetailScreen(id: id);
}
