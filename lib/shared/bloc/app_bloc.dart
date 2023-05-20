import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';
import 'package:untitled/base/bloc/bloc_base.dart';
import 'package:untitled/base/dependency/app_service.dart';
import 'package:untitled/base/dependency/router/router_service.dart';
import 'package:untitled/features/root/enums/navigation_bottom_tab_enum.dart';

class AppBloc extends BlocBase {
  final Ref ref;
  late final RouterService routerService = ref.watch(AppService.router);
  final selectedBottomTabSubject =
      BehaviorSubject<NavigatorBottomTabEnum>.seeded(
    NavigatorBottomTabEnum.home,
  );

  final navigatorKeysMap = NavigatorBottomTabEnum.values
      .fold<Map<NavigatorBottomTabEnum, GlobalKey<NavigatorState>>>(
    {},
    (previousValue, element) =>
        previousValue..[element] = GlobalKey<NavigatorState>(),
  );

  AppBloc(this.ref);

  @override
  void dispose() {
    selectedBottomTabSubject.close();
    super.dispose();
  }

  void onBottomTabChange(NavigatorBottomTabEnum currentTab) {
    selectedBottomTabSubject.value = currentTab;
  }
}

final appBlocProvider = Provider<AppBloc>((ref) => AppBloc(ref));
