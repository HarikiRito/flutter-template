import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/base/routing/input/route_input.dart';

/// Route navigator function
class RouteNavigator extends GetxController {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static NavigatorState? get navigatorState => navigatorKey.currentState;

  static Future<T?> push<T extends Object?>(RouteInput routeInput) async {
    final result = await navigatorState?.pushNamed(
      routeInput.routeName,
      arguments: routeInput.arguments,
    );
    return result as T?;
  }

  static Future<T?> pushReplacement<T extends Object?>(
      RouteInput routeInput) async {
    final result = await navigatorState?.pushReplacementNamed(
      routeInput.routeName,
      arguments: routeInput.arguments,
    );
    return result as T?;
  }

  static void pop<T extends Object>([T? result]) {
    navigatorState?.pop<T>(result);
  }

  static void popUntil(RoutePredicate predicate) {
    navigatorState?.popUntil(predicate);
  }
}
