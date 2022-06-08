import 'dart:ui';

import 'package:get/get_navigation/src/root/internacionalization.dart';

abstract class I18nBaseProvider {
  Locale get defaultLocale;

  Translations get translations;
}
