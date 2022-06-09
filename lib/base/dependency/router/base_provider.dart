import 'package:flutter/material.dart';

import '../../routing/input/route_input.dart';

abstract class RouterBaseProvider {
  BuildContext get rootContext;
  Future<T?> push<T extends Object>(RouteInput routeInput);

  Future<T?> pushReplacement<T extends Object?>(
    RouteInput routeInput,
  );

  void pop<T extends Object>([T? result]);

  void popUntil(RoutePredicate predicate);
}
