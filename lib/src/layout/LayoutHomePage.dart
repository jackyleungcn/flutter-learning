import 'package:flutter/material.dart';
import './RowAndColumn.dart';
import './FlexA.dart';
import './WrapAndFlow.dart';
import './StackAndPositioned.dart';

class LayoutHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: EdgeInsets.all(20),
    //   child: Column(
    //     children: <Widget>[
    //       // RowAndColumn(),
    //       // FlexA(),
    //       // WrapAndFlow(),
    //     ],
    //   ),
    // );
    return StackAndPositioned();
  }
}
