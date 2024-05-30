import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ObsBuilder extends StatefulWidget {
  final List<Stream> streams;
  final Widget Function(BuildContext context) builder;

  /// By default, the widget will rebuild whenever the stream emits a new value.
  /// If you want to rebuild the widget even if the new value is the same as the old one, set this to true.
  final bool rebuildOnSameValueChange;

  const ObsBuilder({
    this.streams = const [],
    required this.builder,
    this.rebuildOnSameValueChange = false,
  });

  @override
  State<ObsBuilder> createState() => _ObsBuilderState();
}

class _ObsBuilderState extends State<ObsBuilder> {
  StreamSubscription? subscription;

  @override
  void initState() {
    super.initState();
    var stream = Rx.merge(widget.streams);

    if (!widget.rebuildOnSameValueChange) {
      stream = stream.distinct();
    }
    // Rebuild the widget whenever the stream changes
    subscription = stream.listen((_) => setState(() {}));
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }
}
