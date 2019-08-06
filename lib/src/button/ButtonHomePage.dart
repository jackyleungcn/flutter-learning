import 'package:flutter/material.dart';
import './RaisedButtonA.dart';
import './FlatButtonA.dart';
import './OutlineButtonA.dart';
import './IconButtonA.dart';

class ButtonHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButtonA(),
        FlatButtonA(),
        OutlineButtonA(),
        IconButtonA(),
      ],
    );
  }
}
