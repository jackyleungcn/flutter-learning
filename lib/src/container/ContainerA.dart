import 'package:flutter/material.dart';

class ContainerA extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 50.0, left: 50.0),
          constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
          decoration: BoxDecoration(
            gradient: RadialGradient(
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0),
            ],
          ),
          transform: Matrix4.rotationZ(.2),
          alignment: Alignment.center,
          child: Text(
            "5.20",
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
        ),
        Container(
          margin: EdgeInsets.all(20.0), //容器外补白
          color: Colors.orange,
          child: Text("AAAAAA"),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.orange),
            child: Text("AAAAAA原生实现"),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0), //容器内补白
          color: Colors.orange,
          child: Text("BBBBBB"),
        ),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.orange),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("BBBBBB原生实现"),
          ),
        ),
      ],
    );
  }
}
