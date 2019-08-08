import 'package:flutter/material.dart';
import './PaddingA.dart';
import './ConstrainedBoxesA.dart';
import './DecoratedBoxA.dart';

class ContainerHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          // PaddingA(),
          // ConstrainedBoxesA(),
          DecoratedBoxA(),
        ],
      ),
    );
  }
}
