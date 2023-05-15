import 'package:flutter/material.dart';
import 'package:untitled/base/dependency/router/router_base_provider.dart';
import 'package:untitled/base/routing/input/route_input.dart';

class RouterProvider extends RouterBaseProvider {
  static final navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState? get _navigatorState => navigatorKey.currentState;

  @override
  BuildContext get rootContext => _navigatorState!.context;

  @override
  void pop<T extends Object>([T? result]) {
    _navigatorState?.pop(result);
  }

  @override
  void popUntil(RoutePredicate predicate) {
    _navigatorState?.popUntil(predicate);
  }

  @override
  Future<T?> push<T extends Object>(RouteInput routeInput) async {
    final result = await _navigatorState?.pushNamed(
      routeInput.routeName,
      arguments: routeInput.arguments,
    );
    return result as T?;
  }

  @override
  Future<T?> pushReplacement<T extends Object?>(RouteInput routeInput) async {
    final result = await _navigatorState?.pushReplacementNamed(
      routeInput.routeName,
      arguments: routeInput.arguments,
    );
    return result as T?;
  }
}
