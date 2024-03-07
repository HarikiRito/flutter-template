import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/base/bloc/bloc_provider.dart';
import 'package:untitled/base/dependency/app_service.dart';

import 'package:untitled/base/rx/obs_builder.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final bloc = ref.watch(BlocProvider.counter);
    final appLocale = ref.watch(AppService.localization);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ObsBuilder(
              streams: [bloc.counterSubject],
              builder: (ctx) => Text(
                'You have pushed the button this many times: ${bloc.counterSubject.value}',
              ),
            ),
            Text(appLocale.helloWorld),
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
