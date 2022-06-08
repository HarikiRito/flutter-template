import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class I18nBaseProvider {
  AppLocalizations localizationsInstance(BuildContext context);
}
