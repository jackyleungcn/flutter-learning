import 'package:flutter/material.dart';

class WillPopScopeA extends StatefulWidget {
  @override
  _WillPopScopeA createState()=> new _WillPopScopeA();
}

class _WillPopScopeA extends State<WillPopScopeA> {
  DateTime _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if(_lastPressedAt == null || DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
          _lastPressedAt = DateTime.now();
          return false;    
        }
        return true;
      },
      child: Container(
        alignment: Alignment.center,
        child: Text("1秒内连续按两次返回键退出"),
      ),
    );
  }
}
