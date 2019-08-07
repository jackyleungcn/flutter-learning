import 'package:flutter/material.dart';
class RaisedButtonA extends StatelessWidget {
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('RaisedButton'),
      onPressed: (){
        print('RaisedButton button is pressed');
      },
    );
  }
}