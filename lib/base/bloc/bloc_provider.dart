import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled/base/bloc/bloc_base.dart';
import 'package:untitled/features/counter/counter_bloc.dart';
import 'package:untitled/shared/bloc/app_bloc.dart';

class BlocProvider {
  static final app = createAutoDisposeBloc((ref) => AppBloc(ref));
  static late AutoDisposeProvider<CounterBloc> counter;

  BlocProvider._();
}
