import 'package:flutter/material.dart';
import './LinearProgressIndicatorA.dart';
import './CircularProgressIndicatorA.dart';
import './ProgressRoute.dart';

class ProgressIndicatorHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          LinearProgressIndicatorA(),
          CircularProgressIndicatorA(),
          ProgressRoute(),
        ],
      ),
    );
  }
}
