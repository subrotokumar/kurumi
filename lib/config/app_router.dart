import 'package:anilist/discover_media.dart';
import 'package:anilist/media_detail_query.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kurumi/config/app_route_constant.dart';
import 'package:kurumi/presentation/character/characher_screen.dart';
import 'package:kurumi/presentation/home/homepage.dart';
import 'package:kurumi/presentation/login/login.dart';
import 'package:kurumi/presentation/media_description/media_screen.dart';
import 'package:kurumi/presentation/search_media/search_media_page.dart';
import 'package:kurumi/presentation/settings/settings.dart';
import 'package:kurumi/presentation/splash/splash.dart';
export 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: 'nativeSplash',
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashPage());
        },
      ),
      GoRoute(
        name: AppRouteConstant.HomeScreen.name,
        path: AppRouteConstant.HomeScreen.path,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const HomePage(),
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        name: AppRouteConstant.SplashScreen.name,
        path: AppRouteConstant.SplashScreen.path,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashPage());
        },
      ),
      GoRoute(
        name: AppRouteConstant.LoginScreen.name,
        path: AppRouteConstant.LoginScreen.path,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const LoginPage(),
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        name: AppRouteConstant.SearchScreen.name,
        path: AppRouteConstant.SearchScreen.path,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const SearchMedia(),
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        name: AppRouteConstant.SettingScreen.name,
        path: AppRouteConstant.SettingScreen.path,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const SettingScreen(),
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        name: AppRouteConstant.MediaScreen.name,
        path: '${AppRouteConstant.MediaScreen.path}/:id/:title',
        pageBuilder: (context, state) {
          var id = int.parse(state.params['id'] ?? '0');
          String title = state.params['title'] ?? '';
          return CustomTransitionPage(
            child: MediaScreen(
              id: id,
              title: title,
            ),
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        name: AppRouteConstant.Character.name,
        path: '${AppRouteConstant.Character.path}/:id/:name',
        pageBuilder: (context, state) {
          var id = int.parse(state.params['id'] ?? '0');
          String name = state.params['name'] ?? '';
          GMediaDetailQueryData_Media_characters_edges? data =
              state.extra as GMediaDetailQueryData_Media_characters_edges;
          return CustomTransitionPage(
            child: CharacterScreen(
              id: id,
              name: name,
              characterData: data,
            ),
            transitionDuration: const Duration(milliseconds: 800),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity:
                    CurveTween(curve: Curves.easeInOutCirc).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
      //
      // GoRoute(
      //   name: AppRouteConstant.MediaScreen.name,
      //   path: AppRouteConstant.MediaScreen.path,
      //   pageBuilder: (context, state) {
      //     GDiscoverMediaData_Page_media data =
      //         state.extra as GDiscoverMediaData_Page_media;
      //     return CustomTransitionPage(
      //       child: MediaScreen(data: data),
      //       transitionDuration: const Duration(milliseconds: 800),
      //       transitionsBuilder:
      //           (context, animation, secondaryAnimation, child) {
      //         return FadeTransition(
      //           opacity:
      //               CurveTween(curve: Curves.easeInOutCirc).animate(animation),
      //           child: child,
      //         );
      //       },
      //     );
      //   },
      // ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
        child: Scaffold(
          body: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '404',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 35),
                ),
                SizedBox(height: 16),
                OutlinedButton(
                  onPressed: () =>
                      context.goNamed(AppRouteConstant.HomeScreen.name),
                  child: Text('GO TO HOME'),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
