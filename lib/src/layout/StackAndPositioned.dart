import 'package:flutter/material.dart';

class StackAndPositioned extends StatelessWidget {
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: 18.0,
            top: 150.0,
            child: Text("AAAAAA"),
          ),
          Container(
            child: Text("Hello world", style: TextStyle(color: Colors.white)),
            color: Colors.blue,
          ),
          Positioned(
            bottom: 18.0,
            right: 30.0,
            child: Text("BBBBBB"),
          ),
        ],
      ),
    );
  }
}
