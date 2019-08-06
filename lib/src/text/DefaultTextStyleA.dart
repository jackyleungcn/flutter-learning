import 'package:flutter/material.dart';

class DefaultTextStyleA extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTextStyle(
        style: TextStyle(color: Colors.red, fontSize: 20.0),
        textAlign: TextAlign.start,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('inherit text'),
            Text('inherit text2'),
            Text('not inherit text',
                style: TextStyle(inherit: false, color: Colors.grey, fontFamily: 'AbrilFatface')),
          ],
        ));
  }
}
