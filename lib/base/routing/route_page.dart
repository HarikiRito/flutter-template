import 'package:flutter/material.dart';
import 'package:untitled/base/routing/screen/route_screen.dart';

import 'route_name.dart';

class RoutePage {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.root:
        return RouteScreen.rootPageRoute(settings);
      case RouteName.counter:
        return RouteScreen.counterPageRoute(settings);
    }
    return RouteScreen.unknownPageRoute(settings);
  }
}
