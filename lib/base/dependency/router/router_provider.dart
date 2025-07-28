import 'package:flutter/material.dart';
import 'package:untitled/base/dependency/router/utils/route_input.dart';

class RouterProvider {
  late final GlobalKey<NavigatorState> navigatorKey;

  NavigatorState? get _navigatorState => navigatorKey.currentState;

  RouterProvider({GlobalKey<NavigatorState>? key}) {
    navigatorKey = key ?? GlobalKey<NavigatorState>();
  }

  BuildContext get rootContext => _navigatorState!.context;

  void pop<T extends Object>({T? result, BuildContext? context}) {
    Navigator.of(context ?? rootContext).pop(result);
  }

  void popUntil(RoutePredicate predicate, {BuildContext? context}) {
    Navigator.of(context ?? rootContext).popUntil(predicate);
  }

  Future<T?> push<T extends Object>(
    RouteInput routeInput, {
    BuildContext? context,
  }) async {
    final result = await Navigator.of(context ?? rootContext).pushNamed(
      routeInput.routeName,
      arguments: routeInput.arguments,
    );
    return result as T?;
  }

  Future<T?> pushReplacement<T extends Object?>(
    RouteInput routeInput, {
    BuildContext? context,
  }) async {
    final result =
        await Navigator.of(context ?? rootContext).pushReplacementNamed(
      routeInput.routeName,
      arguments: routeInput.arguments,
    );
    return result as T?;
  }

  Future<T?> pushAndRemoveUntil<T extends Object?>(
    RouteInput routeInput,
    RoutePredicate predicate, {
    BuildContext? context,
  }) async {
    final result =
        await Navigator.of(context ?? rootContext).pushNamedAndRemoveUntil(
      routeInput.routeName,
      predicate,
      arguments: routeInput.arguments,
    );
    return result as T?;
  }
}
