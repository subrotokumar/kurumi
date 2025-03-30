import 'package:anilist/anilist.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kurumi/src/common/error_screen.dart';
import 'package:kurumi/src/core/routes/router.dart';
import 'package:kurumi/src/core/utils/utils.functions.dart';
import 'package:kurumi/src/features/activity/activity_screen.dart';
import 'package:kurumi/src/features/favourite/favourite_screen.dart';
import 'package:kurumi/src/features/home/homepage.dart';
import 'package:kurumi/src/features/login/login.dart';
import 'package:kurumi/src/features/media_description/media_screen.dart';
import 'package:kurumi/src/features/new_media_description/new_media_screen.dart';
import 'package:kurumi/src/features/news/news_screen.dart';
import 'package:kurumi/src/features/reviews/review_by_id_screen.dart';
import 'package:kurumi/src/features/reviews/review_screen.dart';
import 'package:kurumi/src/features/search_media/widget/search_filter_screen.dart';
import 'package:kurumi/src/features/search_media/search_media_page.dart';
import 'package:kurumi/src/features/settings/settings.dart';
import 'package:kurumi/src/features/splash/splash.dart';
import 'package:kurumi/src/features/va/voice_artist.dart';
import 'package:kurumi/src/provider/init.dart';

export 'package:go_router/go_router.dart';

final router = Provider<GoRouter>(
  (ref) => GoRouter(
    debugLogDiagnostics: true,
    routes: [
      ...$appRoutes,
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
          bool? newUi =
              true ?? (state.extra as bool?) ?? (isTablet ? false : true);
          return newUi == true
              ? NewMediaScreen(id: id, title: title)
              : MediaScreen(id: id, title: title);
        },
      ),
      GoRoute(
        name: 'media-anime',
        path: '/anime/:id/:title',
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
        name: 'media-manga',
        path: '/manga/:id/:title',
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
      GoRoute(
        path: '/media-review/:id',
        builder: (context, state) {
          int id = int.parse(state.pathParameters['id'] ?? '0');
          return ReviewByIdScreen(id: id);
        },
      ),
      GoRoute(
        name: AppRouteConstant.NewsScreenScreen.name,
        path: AppRouteConstant.NewsScreenScreen.path,
        builder: (context, state) {
          return const NewsScreen();
        },
      ),
    ],
    errorBuilder: (context, state) {
      return const ErrorScreen();
    },
    redirect: (context, state) async {
      final path = state.uri.path;
      log.d('Path => $path');
      final moveTo =
          path.endsWith('/') ? path.substring(0, path.length - 1) : path;
      if (moveTo == '/' || moveTo == '/login' || moveTo == '/splash') {
      } else if (ref.read(initStatus)) {
      } else if (moveTo.isNotEmpty) {
        final status = await ref.read(initStatus.notifier).initialize();
        return status ? moveTo : '/login';
      }
      return null;
    },
  ),
);
