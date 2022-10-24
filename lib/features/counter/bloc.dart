import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../base/bloc/main.dart';
import '../../packages/rx/main.dart';

class CounterBloc extends BlocBase {
  final counterSubject = BehaviorSubject.seeded(0);

  CounterBloc(int value) {
    counterSubject.add(value);
  }
  @override
  void dispose() {
    super.dispose();
    counterSubject.close();
  }

  void increment() {
    counterSubject.value++;
  }
}

class CounterProvider {
  static late AutoDisposeProvider<CounterBloc> counter;
  CounterProvider._();
}
