import 'package:flutter/material.dart';
import './ChangeNotifierProvider.dart';

class Consumer<T> extends StatelessWidget {
  Consumer({
    Key key,
    @required this.builder,
    this.child,
    this.listen = true,
  })  : assert(builder != null),
        super(key: key);

  final Widget child;
  final Widget Function(BuildContext context, T value) builder;
  final bool listen;

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      ChangeNotifierProvider.of<T>(context, listen: this.listen),
    );
  }
}
