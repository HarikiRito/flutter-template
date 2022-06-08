import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/base/dependency/main.dart';
import 'package:untitled/base/rx/bloc_builder.dart';
import 'package:untitled/features/counter/bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CounterBloc>();
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
