import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/base/dependency/i18n/base_provider.dart';

import '../router/base_provider.dart';

class I18nService {
  final I18nBaseProvider i18nProvider;
  final RouterBaseProvider routerProvider;

  I18nService({
    required this.i18nProvider,
    required this.routerProvider,
  });

  AppLocalizations get localizations => i18nProvider.localizationsInstance(routerProvider.rootContext);
}
