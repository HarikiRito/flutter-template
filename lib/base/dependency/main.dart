import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/base/dependency/i18n/provider.dart';
import 'package:untitled/base/dependency/i18n/service.dart';
import 'package:untitled/base/dependency/router/provider.dart';
import 'package:untitled/base/dependency/router/service.dart';

class AppProvider {
  static final router = Provider((ref) => RouterProvider());
  static final i18n = Provider((ref) => I18nProvider());

  AppProvider._();
}

class AppService {
  static final router = Provider(
    (ref) {
      return RouterService(
        routerBaseProvider: ref.watch(AppProvider.router),
      );
    },
  );

  static final i18n = Provider(
    (ref) {
      return I18nService(
        i18nProvider: ref.watch(AppProvider.i18n),
        routerProvider: ref.watch(AppProvider.router),
      );
    },
  );

  static final localization = Provider(
    (ref) {
      return ref.watch(AppService.i18n).localizations;
    },
  );

  AppService._();
}
