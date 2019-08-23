import 'package:flutter/material.dart';

class AlertDialogA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("提示"),
      content: Text("你确定删除当前文件吗？"),
      actions: <Widget>[
        FlatButton(
          child: Text("取消"),
          onPressed: () => Navigator.of(context).pop(),
        ),
        FlatButton(
          child: Text("删除"),
          onPressed: () => Navigator.of(context).pop(true),
        ),
      ],
    );
  }
}