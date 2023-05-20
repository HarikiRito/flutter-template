import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled/base/dependency/i18n/i18n_base_provider.dart';

import '../router/router_provider_interface.dart';

class I18nService {
  final I18nBaseProvider i18nProvider;
  final RouterProviderInterface routerProvider;

  I18nService({
    required this.i18nProvider,
    required this.routerProvider,
  });

  AppLocalizations get localizations =>
      i18nProvider.localizationsInstance(routerProvider.rootContext);
}
