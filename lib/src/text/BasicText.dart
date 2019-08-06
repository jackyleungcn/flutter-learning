import 'package:flutter/material.dart';

class BaiscText extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "Hello World" * 6,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 18.0,
            height: 1.2,
            fontFamily: "Courier",
            background: new Paint()..color=Colors.yellow,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed,
          ),
        ),
        Text(
          "Hello World! I'm Jack." * 4,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: <Widget>[
            Text(
              "Hello World",
              textScaleFactor: 1.5,
            ),
          ],
        )
      ],
    ));
  }
}
