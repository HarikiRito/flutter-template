import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../base/bloc/bloc_base.dart';
import '../../packages/rx/main.dart';

class CounterBloc extends BlocBase {
  final counterSubject = BehaviorSubject.seeded(0);
  final Ref ref;
  CounterBloc(this.ref) {}
  @override
  void dispose() {
    super.dispose();
    counterSubject.close();
  }

  void increment() {
    counterSubject.value++;
  }
}
