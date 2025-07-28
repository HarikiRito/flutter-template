import 'package:flutter/material.dart';
import 'package:untitled/base/dependency/router/router_provider.dart';
import 'package:untitled/base/dependency/router/utils/route_input.dart';

class RouterService {
  final RouterProvider routerProvider;

  RouterService({required this.routerProvider});

  GlobalKey<NavigatorState> get navigatorKey => routerProvider.navigatorKey;

  BuildContext get rootContext => routerProvider.rootContext;

  void pop<T extends Object>({T? result, BuildContext? context}) {
    routerProvider.pop(result: result, context: context);
  }

  void popUntil(RoutePredicate predicate, {BuildContext? context}) {
    routerProvider.popUntil(predicate, context: context);
  }

  Future<T?> push<T extends Object>(
    RouteInput routeInput, {
    BuildContext? context,
  }) async {
    return routerProvider.push(routeInput, context: context);
  }

  Future<T?> pushReplacement<T extends Object?>(
    RouteInput routeInput, {
    BuildContext? context,
  }) async {
    return routerProvider.pushReplacement(routeInput, context: context);
  }

  Future<T?> pushAndRemoveUntil<T extends Object?>(
    RouteInput routeInput,
    RoutePredicate predicate, {
    BuildContext? context,
  }) async {
    return routerProvider.pushAndRemoveUntil(
      routeInput,
      predicate,
      context: context,
    );
  }
}
