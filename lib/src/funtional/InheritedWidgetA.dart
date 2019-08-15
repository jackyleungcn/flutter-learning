import 'package:flutter/material.dart';
import './ShareDataWidget.dart';

class InheritedWidgetA extends StatefulWidget {
  @override
  _InheritedWidgetA createState() => new _InheritedWidgetA();
}

class _InheritedWidgetA extends State<InheritedWidgetA> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Dependencies change");
  }
}
