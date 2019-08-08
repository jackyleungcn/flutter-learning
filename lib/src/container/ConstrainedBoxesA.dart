import 'package:flutter/material.dart';

class ConstrainedBoxesA extends StatelessWidget {
  Widget blueBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.blue),
  );

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: double.infinity, //宽度尽可能大
              minHeight: 50.0 //最小高度为50像素
              ),
          child: Container(
            height: 5.0,
            child: blueBox,
          ),
        ),
        SizedBox(
          width: 80.0,
          height: 80.0,
          child: blueBox,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 90.0, minWidth: 20.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: 40.0, minWidth: 40.0),
            child: blueBox,
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 90.0, maxWidth: 20.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 40.0, maxWidth: 40.0),
            child: SizedBox(
              width: 800.0,
              height: 800.0,
              child: blueBox,
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0), //父
          child: UnconstrainedBox(
            //“去除”父级限制
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
              child: blueBox,
            ),
          ),
        ),
      ],
    );
  }
}
