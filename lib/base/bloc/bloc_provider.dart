import 'package:riverpod/src/provider.dart';
import 'package:untitled/features/counter/counter_bloc.dart';

class BlocProvider {
  static late AutoDisposeProvider<CounterBloc> counter;

  BlocProvider._();
}
