import 'package:flutter/material.dart';

class PaddingA extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      //上下左右各添加16像素补白
      padding: EdgeInsets.all(16.0),
      child: Column(
        //显式指定对齐方式为左对齐，排除对齐干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            //左边添加8像素补白
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("AAAAAA"),
          ),
          Padding(
            //上下各添加8像素补白
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Text("BBBBBB"),
          ),
          Padding(
            // 分别指定四个方向的补白
            padding: const EdgeInsets.fromLTRB(20.0, .0, 20.0, 20.0),
            child: Text("CCCCCC"),
          )
        ],
      ),
    );
  }
}
