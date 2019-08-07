import 'package:flutter/material.dart';
import './SwitchCheckbox.dart';
import './TextFieldA.dart';
import './FormTestRoute.dart';

class InputHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[SwitchCheckbox(), TextFieldA(), FormTestRoute()],
    );
  }
}
