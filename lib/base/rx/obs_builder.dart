import 'package:flutter/material.dart';

import '../../packages/rx/main.dart';

class ObsBuilder extends StatefulWidget {
  final List<Stream> streams;
  final Widget Function() builder;

  const ObsBuilder({
    this.streams = const [],
    required this.builder,
  });

  @override
  State<ObsBuilder> createState() => _ObsBuilderState();
}

class _ObsBuilderState extends State<ObsBuilder> {
  @override
  void initState() {
    super.initState();
    // Rebuild the widget whenever the stream changes
    Rx.merge(widget.streams).listen((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder();
  }
}
