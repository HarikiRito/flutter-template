import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/features/counter/screen.dart';

import 'package:untitled/features/root/screen.dart';

import 'package:untitled/features/unknown/screen.dart';

class RouteScreen {
  static PageRoute rootPageRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => const RootScreen(),
    );
  }

  static PageRoute counterPageRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => const CounterScreen(),
    );
  }

  static PageRoute unknownPageRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => const UnknownScreen(),
    );
  }

  static PageRoute _routeByPlatform({
    required RouteSettings settings,
    required WidgetBuilder builder,
  }) {
    if (Platform.isIOS) {
      return CupertinoPageRoute(builder: builder, settings: settings);
    }

    return MaterialPageRoute(builder: builder, settings: settings);
  }
}
