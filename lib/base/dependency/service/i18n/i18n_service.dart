import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/base/dependency/provider/i18n/base.dart';

import '../../provider/router/base.dart';

class I18nService {
  final I18nBaseProvider i18nProvider;
  final RouterBaseProvider routerProvider;

  I18nService({
    required this.i18nProvider,
    required this.routerProvider,
  });

  AppLocalizations get localizations => i18nProvider.localizationsInstance(routerProvider.rootContext);
}
