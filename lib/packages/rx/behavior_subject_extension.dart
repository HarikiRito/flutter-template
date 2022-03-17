import 'package:rxdart/subjects.dart';

extension Operator on BehaviorSubject {
  BehaviorSubject operator +(dynamic other) {
    return _addOperator(other);
  }

  BehaviorSubject operator -(dynamic other) {
    return _addOperator(-other);
  }

  BehaviorSubject _addOperator(dynamic other) {
    switch (other.runtimeType) {
      case num:
        add(value + other);
        break;
      case BehaviorSubject:
        add(value + (other as BehaviorSubject).value);
    }
    return this;
  }
}
