import 'package:flutter/material.dart';
import 'package:untitled/base/routing/route_name.dart';

import 'base/routing/key.dart';
import 'base/routing/route_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      navigatorKey: NavigatorName.navigatorKey,
      initialRoute: RouteName.root,
    );
  }
}
