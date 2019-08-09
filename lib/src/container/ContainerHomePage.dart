import 'package:flutter/material.dart';
import './PaddingA.dart';
import './ConstrainedBoxesA.dart';
import './DecoratedBoxA.dart';
import './TransformA.dart';

class ContainerHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          // PaddingA(),
          // ConstrainedBoxesA(),
          // DecoratedBoxA(),
          TransformA(),
        ],
      ),
    );
  }
}
