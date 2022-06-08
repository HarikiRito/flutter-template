import '../../base/bloc/main.dart';
import '../../packages/rx/main.dart';

class CounterBloc extends BlocBase {
  final counterSubject = BehaviorSubject.seeded(0);

  @override
  void dispose() {
    super.dispose();
    counterSubject.close();
  }

  void increment() {
    counterSubject.value++;
  }
}
