import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/base/bloc/bloc_provider.dart';
import 'package:untitled/base/rx/obs_builder.dart';
import 'package:untitled/features/root/enums/navigation_bottom_tab_enum.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final appBloc = ref.watch(BlocProvider.app);
    return ObsBuilder(
      streams: [appBloc.selectedBottomTabSubject],
      builder: (ctx) => BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: NavigationBottomTabExtension.toIndex(
          appBloc.selectedBottomTabSubject.value,
        ),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          appBloc
              .onBottomTabChange(NavigationBottomTabExtension.fromIndex(index));
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
