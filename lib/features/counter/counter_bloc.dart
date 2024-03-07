import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:untitled/base/bloc/bloc_base.dart';
import 'package:untitled/packages/rx/main.dart';

class CounterBloc extends BlocBase {
  final counterSubject = BehaviorSubject.seeded(0);
  final Ref ref;

  CounterBloc(this.ref);

  @override
  void dispose() {
    super.dispose();
    counterSubject.close();
  }

  void increment() {
    counterSubject.value++;
  }
}
