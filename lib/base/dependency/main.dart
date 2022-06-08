import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled/base/dependency/provider/i18n/provider.dart';
import 'package:untitled/base/dependency/provider/router/provider.dart';
import 'package:untitled/base/dependency/service/i18n/i18n_service.dart';
import 'package:untitled/base/dependency/service/router/router_service.dart';

class ServiceLocator {
  static RouterService get routerService => Get.find();
  static I18nService get i18nService => Get.find();

  /// Initializes all dependencies
  static void initDependencies() {
    final i18nProvider = I18nProvider();
    final routerProvider = RouterProvider();

    Get.lazyPut(() => RouterService(routerBaseProvider: routerProvider));
    Get.lazyPut(() => I18nService(i18nProvider: i18nProvider, routerProvider: routerProvider));
  }
}

// Quick alias for localizations usage
final appLocalizations = ServiceLocator.i18nService.localizations;
