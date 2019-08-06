import 'package:flutter/material.dart';

class FlatButtonA extends StatelessWidget {
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.blue,
      highlightColor: Colors.blue[700],
      colorBrightness: Brightness.dark,
      splashColor: Colors.grey,
      child: Text("Submit"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: () {
        print('FlatButton is pressed');
      },
    );
  }
}
