import 'package:flutter/material.dart';

class LinearProgressIndicatorA extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LinearProgressIndicator(
          backgroundColor: Colors.grey[200],
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20.0,
          ),
          child: LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation(Colors.green),
            value: .5,
          ),
        ),
      ],
    );
  }
}
