import 'package:flutter/material.dart';
import './InheritedWidgetA.dart';
import './ShareDataWidget.dart';

class InheritedWidgetB extends StatefulWidget {
  @override
  _InheritedWidgetB createState() => new _InheritedWidgetB();
}

class _InheritedWidgetB extends State<InheritedWidgetB> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShareDataWidget(
        data: count,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: InheritedWidgetA(),
            ),
            RaisedButton(
              child: Text("Increment"),
              onPressed: () => setState(() => ++count),
            )
          ],
        ),
      ),
    );
  }
}
