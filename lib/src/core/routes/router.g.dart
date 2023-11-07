// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $characterDetailRoute,
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
