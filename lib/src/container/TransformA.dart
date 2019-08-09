import 'package:flutter/material.dart';

class TransformA extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: new Transform(
              alignment: Alignment.topRight,
              transform: new Matrix4.skewX(0.2),
              child: new Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrange,
                child: const Text('Matrix4.skewX'),
              ),
            ),
          ),
          Container(
            height: 20,
          ),
          _makeNode(Transform.translate(
            offset: Offset(-20.0, -5.0),
            child: Text("translate"),
          )),
          Container(
            height: 20,
          ),
          _makeNode(Transform.rotate(
            angle: 3.14 / 2,
            child: Text("rotate"),
          )),
          Container(
            height: 20,
          ),
          _makeNode(Transform.scale(
            scale: 1.5,
            child: Text("scale"),
          )),
          Container(
            height: 20,
          ),
          _makeNode(RotatedBox(
            quarterTurns: 1, //旋转90度(1/4圈)
            child: Text("RotatedBox"),
          )),
        ],
      ),
    );
  }

  _makeNode(child) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.blue),
      child: Padding(
        padding: EdgeInsets.only(top: 30),
        child: child,
      ),
    );
  }
}
