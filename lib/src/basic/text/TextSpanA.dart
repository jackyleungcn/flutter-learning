import 'package:flutter/material.dart';

class TextSpanA extends StatelessWidget {
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: "Home: "),
      TextSpan(
        text: "https://flutterchina.club",
        style: TextStyle(color: Colors.blue),
      ),
    ]));
  }
}
