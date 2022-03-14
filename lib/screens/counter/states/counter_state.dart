import 'package:get/get.dart' hide Rx;
import 'package:rxdart/rxdart.dart';

class CounterController extends GetxController {
  final countSubject = BehaviorSubject.seeded(2);
  final stringSubject = BehaviorSubject.seeded('a');
  var a = 0.obs;
  @override
  void dispose() {
    countSubject.close();
    super.dispose();
  }

  void increment() {
    countSubject.add(countSubject.value + 1);
  }
}
