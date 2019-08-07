import 'package:flutter/material.dart';
import './RowAndColumn.dart';

class LayoutHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          RowAndColumn(),
        ],
      ),
    );
  }
}
