import 'package:flutter/material.dart';
import 'package:untitled/base/dependency/router/utils/route_screen.dart';

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

  static Route<dynamic>? onGenerateHomeRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return RouteScreen.homePageRoute(settings);
      case RouteName.counter:
        return RouteScreen.counterPageRoute(settings);
    }
    return RouteScreen.unknownPageRoute(settings);
  }

  static Route<dynamic>? onGenerateSettingsRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.settings:
        return RouteScreen.settingPageRoute(settings);
    }
    return RouteScreen.unknownPageRoute(settings);
  }
}
