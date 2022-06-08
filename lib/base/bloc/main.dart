import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

abstract class BlocBase {
  var isDispose = false;
  void dispose() {
    isDispose = true;
  }
}

class BlocUtils {
  static Provider create<T extends BlocBase>(Create<T> bloc) {
    return Provider<T>(
      create: (context) => bloc(context),
      dispose: (_, t) => t.dispose(),
    );
  }
}
