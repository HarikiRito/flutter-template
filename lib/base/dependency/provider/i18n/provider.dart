import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/base/dependency/provider/i18n/base.dart';


class I18nProvider extends I18nBaseProvider {
  @override
  AppLocalizations localizationsInstance(BuildContext context) {
    return AppLocalizations.of(context)!;
  }
}
