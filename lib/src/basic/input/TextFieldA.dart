import 'package:flutter/material.dart';

class TextFieldA extends StatefulWidget {
  @override
  _TextFieldA createState() => new _TextFieldA();
}

class _TextFieldA extends State<TextFieldA> {
  TextEditingController _unameController = new TextEditingController();

  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState() {
    _unameController.addListener(() {
      print(_unameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    focusScopeNode = FocusScope.of(context);

    return Theme(
      data: Theme.of(context).copyWith(
          hintColor: Colors.grey[200],
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.green),
            hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
          )),
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                TextField(
                  autofocus: true,
                  focusNode: focusNode1,
                  controller: _unameController,
                  decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                TextField(
                  focusNode: focusNode2,
                  decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    prefixIcon: Icon(Icons.lock),
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
              ],
            ),
            decoration: BoxDecoration(
                // 下滑线浅灰色，宽度1像素
                border: Border(
                    bottom: BorderSide(color: Colors.grey[200], width: 1.0))),
          ),
          Builder(builder: (ctx) {
            return Column(
              children: <Widget>[
                RaisedButton(
                  child: Text("移动焦点"),
                  onPressed: () {
                    focusScopeNode.requestFocus(focusScopeNode
                                .toString()
                                .indexOf(focusNode1.toString()) >
                            -1
                        ? focusNode2
                        : focusNode1);
                  },
                ),
                RaisedButton(
                  child: Text("隐藏键盘"),
                  onPressed: () {
                    focusNode1.unfocus();
                    focusNode2.unfocus();
                  },
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
