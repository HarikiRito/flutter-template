import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/base/routing/input/route_input.dart';

import '../../base/dependency/main.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final routerService = ref.watch(AppService.router);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              routerService.push(
                RouteInput.counter(),
              );
            },
            child: const Text('Click here to navigate'),
          )
        ],
      ),
    );
  }
}
