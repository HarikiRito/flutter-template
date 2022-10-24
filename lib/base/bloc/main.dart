import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class BlocBase {
  bool isDispose = false;

  void dispose() {
    isDispose = true;
  }
}

class BlocUtils {
  // static Provider provider<T extends BlocBase>(Create<T> bloc) {
  //   return Provider<T>(
  //     create: (context) => bloc(context),
  //     dispose: (_, t) => t.dispose(),
  //   );
  // }

  /// Create an auto dispose provider for bloc
  static AutoDisposeProvider<T> createAutoDisposeBloc<T extends BlocBase>(
    T bloc, [
    Function(T, AutoDisposeProviderRef<T> ref)? func,
  ]) {
    return Provider.autoDispose<T>((ref) {
      ref.onDispose(() {
        bloc.dispose();
      });
      func?.call(bloc, ref);
      return bloc;
    });
  }
}
