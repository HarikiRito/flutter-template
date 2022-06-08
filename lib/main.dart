import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/base/dependency/main.dart';
import 'package:untitled/base/routing/route_name.dart';

import 'base/dependency/service/i18n/i18n_service.dart';
import 'base/routing/route_navigator.dart';
import 'base/routing/route_page.dart';

void main() {
  initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final i18nService = Get.find<I18nService>();
    return GetMaterialApp(
      translations: i18nService.translations,
      fallbackLocale: i18nService.defaultLocale,
      locale: i18nService.defaultLocale,
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          // Transitions between screens on different platforms
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: RoutePage.onGenerateRoute,
      navigatorKey: RouteNavigator.navigatorKey,
      initialRoute: RouteName.root,
    );
  }
}
