import 'package:flutter/material.dart';
class OutlineButtonA extends StatelessWidget {
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text('OutlineButton'),
      onPressed: (){
        print('OutlineButton button is pressed');
      },
    );
  }
}