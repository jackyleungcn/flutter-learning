import 'package:flutter/material.dart';

class AlignA extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.blue[50],
          child: Align(
            alignment: Alignment.center,
            widthFactor: 2,
            heightFactor: 2,
            child: FlutterLogo(size: 60),
          ),
        ),
        Container(
          height: 10,
        ),
        Container(
          color: Colors.blue[50],
          width: 120,
          height: 120,
          child: Center(
            child: FlutterLogo(size: 60),
          ),
        )
      ],
    );
  }
}
