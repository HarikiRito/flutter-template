import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatorName extends GetxController {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static NavigatorState? get navigatorState => navigatorKey.currentState;
}
