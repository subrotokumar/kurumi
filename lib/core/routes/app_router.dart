import 'package:anilist/media_detail_query.dart';
import 'package:anilist/review_query.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/common/error_screen.dart';
import 'package:kurumi/core/routes/app_route_constant.dart';
import 'package:kurumi/core/utils/utils.functions.dart';
import 'package:kurumi/features/activity/activity_screen.dart';
import 'package:kurumi/features/character/character_screen.dart';
import 'package:kurumi/features/character_detail/character_detail_screen.dart';
import 'package:kurumi/features/home/homepage.dart';
import 'package:kurumi/features/login/login.dart';
import 'package:kurumi/features/media_description/media_screen.dart';
import 'package:kurumi/features/favourite/favourite_screen.dart';
import 'package:kurumi/features/reviews/review_screen.dart';
import 'package:kurumi/features/search_media/search_filter_screen.dart';
import 'package:kurumi/features/search_media/search_media_page.dart';
import 'package:kurumi/features/settings/settings.dart';
import 'package:kurumi/features/splash/splash.dart';
import 'package:kurumi/features/va/voice_artist.dart';
export 'package:go_router/go_router.dart';

final router = Provider<GoRouter>(
  (ref) => GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        name: 'nativeSplash',
        path: '/',
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        name: AppRouteConstant.HomeScreen.name,
        path: AppRouteConstant.HomeScreen.path,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: AppRouteConstant.SplashScreen.name,
        path: AppRouteConstant.SplashScreen.path,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        name: AppRouteConstant.ACTIVITY.name,
        path: AppRouteConstant.ACTIVITY.path,
        builder: (context, state) {
          final page = int.tryParse(state.extra.toString());
          return ActivityScreen(page: page);
        },
      ),
      GoRoute(
        name: AppRouteConstant.SettingScreen.name,
        path: AppRouteConstant.SettingScreen.path,
        builder: (context, state) {
          return const SettingScreen();
        },
      ),
      GoRoute(
        name: AppRouteConstant.LoginScreen.name,
        path: AppRouteConstant.LoginScreen.path,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        name: AppRouteConstant.SearchScreen.name,
        path: AppRouteConstant.SearchScreen.path,
        builder: (context, state) {
          final extra = state.extra as Map;
          final GMediaType mediaType = extra['mediaType'] as GMediaType;
          final String? tags = extra['tags'] as String?;
          final String? genre = extra['genre'] as String?;
          return SearchMedia(
            mediaType: mediaType,
            tag: tags,
            genre: genre,
          );
        },
      ),
      GoRoute(
        name: AppRouteConstant.MediaScreen.name,
        path: '${AppRouteConstant.MediaScreen.path}/:id/:title',
        builder: (context, state) {
          var id = int.parse(state.pathParameters['id'] ?? '0');
          String title = state.pathParameters['title'] ?? '';
          return MediaScreen(
            id: id,
            title: title,
          );
        },
      ),
      GoRoute(
        name: AppRouteConstant.Character.name,
        path: '${AppRouteConstant.Character.path}/:id/:name',
        builder: (context, state) {
          var id = int.parse(state.pathParameters['id'] ?? '0');
          String name = state.pathParameters['name'] ?? '';
          final extra = state.extra as Map;
          GMediaDetailQueryData_Media_characters_edges? data =
              (extra['data']) as GMediaDetailQueryData_Media_characters_edges;
          int index = extra['index'];
          return CharacterScreen(
            id: id,
            name: name,
            characterData: data,
            index: index,
          );
        },
      ),
      GoRoute(
        name: AppRouteConstant.CharacterDetailScreen.name,
        path: AppRouteConstant.CharacterDetailScreen.path,
        builder: (context, state) {
          var id = int.parse(state.pathParameters['id'] ?? '0');
          return CharacterDetailScreen(
            id: id,
          );
        },
      ),
      GoRoute(
        name: AppRouteConstant.VAScreen.name,
        path: AppRouteConstant.VAScreen.path,
        builder: (context, state) {
          var id = int.parse(state.pathParameters['id'] ?? '0');
          return VAScreen(id: id);
        },
      ),
      GoRoute(
        name: AppRouteConstant.FavAnimeScreen.name,
        path: AppRouteConstant.FavAnimeScreen.path,
        builder: (context, state) {
          return FavAnimeScreen(index: state.extra as int);
        },
      ),
      GoRoute(
        name: AppRouteConstant.SearchFilterScreen.name,
        path: AppRouteConstant.SearchFilterScreen.path,
        builder: (context, state) {
          return SearchFilterScreen(
            filterOption: state.extra as FilterOption,
          );
        },
      ),
      GoRoute(
        name: AppRouteConstant.Review.name,
        path: '${AppRouteConstant.Review.path}/:id',
        builder: (context, state) {
          int id = int.parse(state.pathParameters['id'] ?? '0');
          GReviewQueryData_Page_reviews? data =
              state.extra as GReviewQueryData_Page_reviews;
          return ReviewScreen(
            id: id,
            reviewData: data,
          );
        },
      ),
    ],
    errorBuilder: (context, state) {
      return const ErrorScreen();
    },
    redirect: (context, state) {
      if (state.fullPath != AppRouteConstant.LoginScreen.path ||
          state.fullPath != AppRouteConstant.SplashScreen.path) {
        log.d(state.fullPath);
      }
      return null;
    },
  ),
);
