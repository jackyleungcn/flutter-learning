import 'package:flutter/material.dart';

class ScrollNotificationA extends StatefulWidget {
  @override
  _ScrollNotificationA createState() => new _ScrollNotificationA();
}

class _ScrollNotificationA extends State<ScrollNotificationA> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          ScrollMetrics metrics = notification.metrics;
          double progress = metrics.pixels / metrics.maxScrollExtent;
          setState((){
            _progress = '${(progress * 100).toInt()}%';
          });

          print("extentBefore: ${metrics.extentBefore}");
          print("extentInside: ${metrics.extentInside}");
          print("extentAfter: ${metrics.extentAfter}");
          print("atEdge: ${metrics.atEdge}");
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ListView.builder(
              itemCount: 100,
              itemExtent: 50.0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('$index'),
                );
              },
            ),
            CircleAvatar(
              radius: 30.0,
              child: Text(_progress),
              backgroundColor: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
