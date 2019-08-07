import 'package:flutter/material.dart';
class IconButtonA extends StatelessWidget {
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.thumb_up),
      onPressed: (){
        print('IconButton button is pressed');
      },
    );
  }
}