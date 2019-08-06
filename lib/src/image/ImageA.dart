import 'package:flutter/material.dart';

class ImageA extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Image(
        image: AssetImage('images/lake.jpg'),
        width: 100.0,
        height: 200.0,
        repeat: ImageRepeat.repeatY,
      ),
      Image.asset('images/lake.jpg', color: Colors.red, colorBlendMode: BlendMode.lighten,),
    ]);
  }
}
