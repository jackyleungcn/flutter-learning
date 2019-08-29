import 'package:flutter/material.dart';

class ListenerA extends StatefulWidget {
  @override
  _ListenerA createState() => new _ListenerA();
}

class _ListenerA extends State<ListenerA> {
  PointerEvent _event;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Listener(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 300.0,
            height: 150.0,
            child: Text(
              _event?.toString() ?? "",
              style: TextStyle(color: Colors.white),
            ),
          ),
          onPointerDown: (PointerDownEvent event) =>
              setState(() => _event = event),
          onPointerMove: (PointerMoveEvent event) =>
              setState(() => _event = event),
          onPointerUp: (PointerUpEvent event) => setState(() => _event = event),
        ),
        Listener(
          behavior: HitTestBehavior.opaque,
          child: ConstrainedBox(
            constraints: BoxConstraints.tight(Size(300.0, 150.0)),
            child: Container(
              color: Colors.red,
              child: Center(child: Text("Box A")),
            ),
          ),
          onPointerDown: (event) => print("Down A"),
        ),
        Stack(
          children: <Widget>[
            Listener(
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(Size(300.0, 200.0)),
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.orange),
                ),
              ),
              onPointerDown: (event) => print("Down 0"),
            ),
            Listener(
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(Size(200.0, 100.0)),
                child: Center(child: Text("左上角200*100范围内非文本区域点击")),
              ),
              onPointerDown: (event) => print("Down 1"),
              behavior: HitTestBehavior.translucent,
            ),
          ],
        ),
        Listener(
          child: AbsorbPointer(
            child: Listener(
              child: Container(
                color: Colors.pink,
                width: 200.0,
                height: 50.0,
              ),
              onPointerDown: (event) => print("AbsorbPointer in"),
            ),
          ),
          onPointerDown: (event) => print("AbsorbPointer up"),
        ),
        Listener(
          child: IgnorePointer(
            child: Listener(
              child: Container(
                color: Colors.purple,
                width: 200.0,
                height: 50.0,
              ),
              onPointerDown: (event) => print("IgnorePointer in"),
            ),
          ),
          onPointerDown: (event) => print("IgnorePointer up"),
        ),
      ],
    );
  }
}
