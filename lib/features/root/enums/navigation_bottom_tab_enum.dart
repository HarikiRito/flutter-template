import 'package:untitled/base/dependency/router/utils/route_name.dart';

enum NavigatorBottomTabEnum { home, settings }

extension NavigationBottomTabExtension on NavigatorBottomTabEnum {
  String get initialRoute {
    switch (this) {
      case NavigatorBottomTabEnum.home:
        return RouteName.home;
      case NavigatorBottomTabEnum.settings:
        return RouteName.settings;
    }
  }

  static NavigatorBottomTabEnum fromIndex(int index) {
    switch (index) {
      case 0:
        return NavigatorBottomTabEnum.home;
      case 1:
        return NavigatorBottomTabEnum.settings;
    }
    return NavigatorBottomTabEnum.home;
  }

  static int toIndex(NavigatorBottomTabEnum tab) {
    switch (tab) {
      case NavigatorBottomTabEnum.home:
        return 0;
      case NavigatorBottomTabEnum.settings:
        return 1;
    }
  }
}
