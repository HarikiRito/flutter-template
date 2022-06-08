import 'dart:ui';

import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:untitled/base/dependency/provider/i18n/base.dart';
import './translation/en_us.dart' as en_us;

class I18nProvider extends I18nBaseProvider {
  @override
  Locale get defaultLocale => en_us.locale;

  @override
  Translations get translations => _AppTranslation();
}

class _AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {en_us.locale.toString(): en_us.translationMap};
  }
}
