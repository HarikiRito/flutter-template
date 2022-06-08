import 'package:get/get.dart';
import 'package:untitled/base/dependency/provider/i18n/provider.dart';
import 'package:untitled/base/dependency/service/i18n/i18n_service.dart';

/// Initializes all dependencies
void initDependencies() {
  final i18nProvider = I18nProvider();


  Get.lazyPut(() => I18nService(i18nProvider: i18nProvider));
}
