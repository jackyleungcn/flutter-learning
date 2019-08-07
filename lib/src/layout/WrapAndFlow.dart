import 'package:flutter/material.dart';

class WrapAndFlow extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          spacing: 10.0,
          runSpacing: 4.0,
          alignment: WrapAlignment.center,
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("A"),
              ),
              label: Text("Jacky"),
            ),
            Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
              label: Text('Lafayette'),
            ),
            Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
              label: Text('Mulligan'),
            ),
            Chip(
              avatar:
                  CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
              label: Text('Laurens'),
            ),
          ],
        ),
        Flow(
          delegate: _TestFlowDelegate(margin: EdgeInsets.all(10.0)),
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.red,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.green,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.blue,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.yellow,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.brown,
            ),
            Container(
              width: 80.0,
              height: 80.0,
              color: Colors.purple,
            ),
          ],
        ),
      ],
    );
  }
}

class _TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;
  _TestFlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;

    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i).width + x + margin.right;
      var widthGreaterThanContextWidth = w >= context.size.width;

      if (widthGreaterThanContextWidth) {
        x = margin.left;
        y += context.getChildSize(i).height + margin.top + margin.bottom;
      }

      context.paintChild(
        i,
        transform: Matrix4.translationValues(x, y, 0.0),
      );

      if (widthGreaterThanContextWidth) {
        x += context.getChildSize(i).width + margin.left + margin.right;
      } else {
        x = w + margin.left;
      }
    }
  }

  @override
  getSize(BoxConstraints constraints) {
    return Size(double.infinity, 200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
