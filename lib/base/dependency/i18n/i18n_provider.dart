import 'package:flutter/cupertino.dart';
import 'package:untitled/l10n/gen_l10n/app_localizations.dart';

class I18nProvider {
  AppLocalizations localizationsInstance(BuildContext context) {
    return AppLocalizations.of(context);
  }
}
