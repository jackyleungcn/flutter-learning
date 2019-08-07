import 'package:flutter/material.dart';

class CircularProgressIndicatorA extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.purple),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: SizedBox(
              height: 50,
              width: 100,
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.orange),
                value: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
