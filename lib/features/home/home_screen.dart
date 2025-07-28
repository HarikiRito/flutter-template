import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/base/dependency/router/utils/route_input.dart';
import 'package:untitled/shared/providers/bottom_navigation_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final homeRouter = ref.watch(BottomNavigationProvider.home);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text('Home Screen'),
            ElevatedButton(
              onPressed: () {
                homeRouter.push(RouteInput.counter());
              },
              child: const Text('To counter'),
            ),
          ],
        ),
      ),
    );
  }
}
