import 'package:flutter/material.dart';

class SimpleDialogA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("对话框2"),
      onPressed: () async {
        this.changeLanguage(context);
      },
    );
  }

  // 弹出对话框
  Future<void> changeLanguage(context) async {
    int i = await showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("请选择语言"),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 1);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                  child: const Text("简体中文"),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 2);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: const Text("美国英语"),
                ),
              ),
            ],
          );
        });
    if (i != null) {
      print("选择了：${i == 1 ? "中文简体" : "美国英语"}");
    }
  }
}
