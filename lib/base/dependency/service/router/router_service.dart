
import 'package:flutter/material.dart';
import 'package:untitled/base/dependency/provider/router/base.dart';
import 'package:untitled/base/routing/input/route_input.dart';

class RouterService {
  final RouterBaseProvider routerBaseProvider;

  RouterService({required this.routerBaseProvider});

  void pop<T extends Object>([T? result]) {
    routerBaseProvider.pop(result);
  }

  void popUntil(RoutePredicate predicate) {
    routerBaseProvider.popUntil(predicate);
  }

  Future<T?> push<T extends Object>(RouteInput routeInput) async {
    return routerBaseProvider.push(routeInput);
  }

  Future<T?> pushReplacement<T extends Object?>(RouteInput routeInput) async {
   return routerBaseProvider.pushReplacement(routeInput);
  }
}
