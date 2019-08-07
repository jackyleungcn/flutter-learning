import 'package:flutter/material.dart';
import './ImageA.dart';
import './ImageFromNetwork.dart';
import './FontTextIcon.dart';

class ImageHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[ImageA(), ImageFromNetwork(), FontTextIcon()],
    );
  }
}
