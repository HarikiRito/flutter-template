import 'package:flutter/material.dart';

import '../../base/routing/route_name.dart';

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
                Navigator.pushNamed(context, RouteName.counter);
              },
              child: Text('Click here to navigate'))
        ],
      ),
    );
  }
}
