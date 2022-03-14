import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Rx;
import 'package:untitled/base/rx/bloc_builder.dart';
import 'package:untitled/base/rx/rx_builder.dart';
import 'package:untitled/screens/counter/states/counter_state.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final c = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('abc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder(
              stream: c.countSubject,
              builder: (_, v) {
                return Text('$v');
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          c.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
