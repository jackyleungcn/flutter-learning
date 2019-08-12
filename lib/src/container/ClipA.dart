import 'package:flutter/material.dart';

class ClipA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 头像
    Widget avatar = Image.asset("images/lake.jpg", width: 100.0, height: 100,);
    return Center(
      child: Column(
        children: <Widget>[
          avatar, //不剪裁
          ClipOval(child: avatar), //剪裁为圆形
          ClipRRect(
            //剪裁为圆角矩形
            borderRadius: BorderRadius.circular(5.0),
            child: avatar,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                widthFactor: .5, //宽度设为原来宽度一半，另一半会溢出
                child: avatar,
              ),
              Text(
                "你好世界",
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRect(
                //将溢出部分剪裁
                child: Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5, //宽度设为原来宽度一半
                  child: avatar,
                ),
              ),
              Text("你好世界", style: TextStyle(color: Colors.red))
            ],
          ),
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: ClipRect(
                clipper: MyClipper(), //使用自定义的clipper
                child: avatar),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(10, 10, 80, 80);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
