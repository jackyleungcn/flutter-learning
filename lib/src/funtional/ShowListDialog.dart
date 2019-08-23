import 'package:flutter/material.dart';

class ShowListDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("对话框3"),
      onPressed: () {
        this.showListDialog(context);
      },
    );
  }

  // 弹出对话框
  Future<void> showListDialog(context) async {
    int index = await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        var child = Column(
          children: <Widget>[
            ListTile(title: Text("请选择")),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('$index'),
                    onTap: () => Navigator.of(context).pop(index),
                  );
                },
              ),
            ),
          ],
        );
        return Dialog(child: child);
        // return UnconstrainedBox(
        //   constrainedAxis: Axis.vertical,
        //   child: ConstrainedBox(
        //     constraints: BoxConstraints(maxWidth: 280),
        //     child: Material(
        //       child: child,
        //       type: MaterialType.card,
        //     ),
        //   ),
        // );
      },
    );
    if (index != null) {
      print("点击了：$index");
    }
  }
}
