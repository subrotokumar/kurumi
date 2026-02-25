// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
export 'package:go_router/go_router.dart';

class AppRouteConstant {
  static Route HomeScreen = Route('home', '/home');
  static Route SplashScreen = Route('splash', '/splash');
  static Route PostScreen = Route('posts', '/posts');
  static Route LoginScreen = Route('login', '/login');
  static Route ErrorScreen = Route('error', '/error');
  static Route SearchScreen = Route('search', '/search');
  static Route ImageSearchScreen = Route('ImageSearch', '/search/image');
  static Route SettingScreen = Route('settings', '/settings');
  static Route MediaScreen = Route('media', '/media');
  static Route Character = Route('character-media', '/character/media');
  static Route Review = Route('review', '/review');
  static Route ACTIVITY = Route('activity', '/activity');
  static Route VAScreen = Route('staff', '/staff/:id');
  static Route FavAnimeScreen = Route('FavAnime', '/user/:username/favorites');
  static Route SearchFilterScreen = Route('FilterScreen', '/search/filter');
  static Route NewsScreenScreen = Route('NewsScreen', '/news');
  static Route OtherSearchScreen = Route("OtherScreen", "/search/other");
  static Route ThreeXThreeScreen = Route('3x3', "/3x3");
  static Route CharacterDetailScreen = Route(
    'CharacterDetail',
    '/character/:id/:name',
  );
}

class Route {
  final String name;
  final String path;
  Route(this.name, this.path);
}

class CharacterDetailRoute {
  int id;
  String name;

  CharacterDetailRoute({required this.id, required this.name});

  Future<void> push(BuildContext context) async {
    context.push(AppRouteConstant.CharacterDetailScreen.path);
  }
}
