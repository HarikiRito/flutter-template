import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/base/dependency/main.dart';
import 'package:untitled/base/rx/bloc_builder.dart';
import 'package:untitled/features/counter/bloc.dart';

import '../../base/rx/obs_builder.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final bloc = ref.watch(CounterProvider.counter);
    return Scaffold(
      appBar: AppBar(
        title: const Text('abc'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder(
              stream: bloc.counterSubject,
              builder: (_, count) => Text(
                'You have pushed the button this many times: ${count}',
              ),
            ),
            ObsBuilder(
              streams: [bloc.counterSubject],
              builder: () => Text(
                'You have pushed the button this many times: ${bloc.counterSubject.value}',
              ),
            ),
            Text(appLocalizations.helloWorld)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
