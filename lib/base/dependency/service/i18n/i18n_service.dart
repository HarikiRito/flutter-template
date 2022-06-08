import 'dart:ui';

import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:untitled/base/dependency/provider/i18n/base.dart';

class I18nService {
  final I18nBaseProvider i18nProvider;

  I18nService({
    required this.i18nProvider,
  });


  Locale get defaultLocale => i18nProvider.defaultLocale;

  Translations get translations => i18nProvider.translations;
}
