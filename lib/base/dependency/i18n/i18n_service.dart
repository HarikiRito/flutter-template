import 'package:untitled/base/dependency/i18n/i18n_provider.dart';

import 'package:untitled/base/dependency/router/router_provider_interface.dart';
import 'package:untitled/l10n/gen_l10n/app_localizations.dart';

class I18nService {
  final I18nProvider i18nProvider;
  final RouterProviderInterface routerProvider;

  I18nService({
    required this.i18nProvider,
    required this.routerProvider,
  });

  AppLocalizations get localizations =>
      i18nProvider.localizationsInstance(routerProvider.rootContext);
}
