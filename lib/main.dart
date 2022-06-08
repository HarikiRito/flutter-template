import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled/base/dependency/main.dart';
import 'package:untitled/base/dependency/provider/router/route_name.dart';

import 'base/dependency/provider/router/provider.dart';
import 'base/dependency/provider/router/route_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ServiceLocator.initDependencies();
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
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
      navigatorKey: RouterProvider.navigatorKey,
      initialRoute: RouteName.root,
    );
  }
}
