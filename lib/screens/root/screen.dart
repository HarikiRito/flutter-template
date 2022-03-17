import 'package:flutter/material.dart';

import 'package:untitled/base/routing/route_name.dart';

import '../../base/routing/input/route_input.dart';
import '../../base/routing/route_navigator.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              RouteNavigator.push(
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
