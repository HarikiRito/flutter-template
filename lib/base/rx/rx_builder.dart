import 'package:flutter/material.dart';
import 'package:untitled/constants/size_box.dart';

/// Simple builder for stream data
class RxBuilder<T> extends StatefulWidget {
  final Stream<T> stream;
  final T? initialValue;
  final Widget Function(BuildContext context, T) builder;
  const RxBuilder({
    Key? key,
    required this.stream,
    required this.builder,
    this.initialValue,
  }) : super(key: key);

  @override
  _RxBuilderState createState() => _RxBuilderState<T>();
}

class _RxBuilderState<T> extends State<RxBuilder> {
  late T? value = widget.initialValue;

  @override
  void initState() {
    widget.stream.listen((v) {
      setState(() {
        value = v;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (value == null) return SizedBoxConstants.shrink;
    return widget.builder(context, value);
  }
}
