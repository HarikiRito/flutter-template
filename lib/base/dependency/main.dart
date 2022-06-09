import 'package:get/get.dart';
import 'package:untitled/base/dependency/i18n/provider.dart';
import 'package:untitled/base/dependency/i18n/service.dart';
import 'package:untitled/base/dependency/router/provider.dart';
import 'package:untitled/base/dependency/router/service.dart';

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

  ServiceLocator._();
}

// Quick alias for localizations usage
final appLocalizations = ServiceLocator.i18nService.localizations;
