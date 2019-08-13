import 'package:flutter/material.dart';
import './SingleChildScrollViewA.dart';

class ScrollHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SingleChildScrollViewA(),
        ],
      ),
    );
  }
}
