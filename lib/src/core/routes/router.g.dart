// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $characterDetailRoute,
      $otherSearchRoute,
      $threeXThreeRoute,
    ];

RouteBase get $characterDetailRoute => GoRouteData.$route(
      path: '/character/:id/:name',
      factory: $CharacterDetailRouteExtension._fromState,
    );

extension $CharacterDetailRouteExtension on CharacterDetailRoute {
  static CharacterDetailRoute _fromState(GoRouterState state) =>
      CharacterDetailRoute(
        id: int.parse(state.pathParameters['id']!),
        name: state.pathParameters['name']!,
      );

  String get location => GoRouteData.$location(
        '/character/${Uri.encodeComponent(id.toString())}/${Uri.encodeComponent(name)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $otherSearchRoute => GoRouteData.$route(
      path: '/search/other',
      factory: $OtherSearchRouteExtension._fromState,
    );

extension $OtherSearchRouteExtension on OtherSearchRoute {
  static OtherSearchRoute _fromState(GoRouterState state) => OtherSearchRoute();

  String get location => GoRouteData.$location(
        '/search/other',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $threeXThreeRoute => GoRouteData.$route(
      path: '/9x9',
      factory: $ThreeXThreeRouteExtension._fromState,
    );

extension $ThreeXThreeRouteExtension on ThreeXThreeRoute {
  static ThreeXThreeRoute _fromState(GoRouterState state) => ThreeXThreeRoute();

  String get location => GoRouteData.$location(
        '/9x9',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
