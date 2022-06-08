import 'package:flutter/material.dart';
import 'package:untitled/base/routing/input/route_input.dart';

import '../../base/dependency/main.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routerService = ServiceLocator.routerService;
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
