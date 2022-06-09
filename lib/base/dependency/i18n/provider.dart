import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/base/dependency/i18n/base_provider.dart';


class I18nProvider extends I18nBaseProvider {
  @override
  AppLocalizations localizationsInstance(BuildContext context) {
    return AppLocalizations.of(context)!;
  }
}
