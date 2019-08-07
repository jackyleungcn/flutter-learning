import 'package:flutter/material.dart';
import './BasicText.dart';
import './TextSpanA.dart';
import './DefaultTextStyleA.dart';

class TextHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        BaiscText(),
        TextSpanA(),
        DefaultTextStyleA(),
      ],
    );
  }
}
