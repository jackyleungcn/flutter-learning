import 'package:flutter/material.dart';

class ListViewA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 默认构造函数
    // return ListView(
    //   shrinkWrap: true,
    //   padding: const EdgeInsets.all(20.0),
    //   children: <Widget>[
    //     Text('I\'m dedicating every day to you'),
    //     const Text('Domestic life was never quite my style'),
    //     const Text('When you smile, you knock me out, I fall apart'),
    //     const Text('And I thought I was so smart'),
    //   ],
    // );

    // ListView.builder
    // return ListView.builder(
    //     itemCount: 100,
    //     itemExtent: 50.0, //强制高度为50.0
    //     itemBuilder: (BuildContext context, int index) {
    //       return ListTile(title: Text("$index"));
    //     });

    // ListView.separated
    // Widget divider1 = Divider(color: Colors.blue);
    // Widget divider2 = Divider(color: Colors.green);

    // return ListView.separated(
    //   itemCount: 200,
    //   itemBuilder: (BuildContext context, int index) {
    //     return ListTile(
    //       title: Text('$index'),
    //     );
    //   },
    //   separatorBuilder: (BuildContext context, int index) {
    //     return index % 2 == 0 ? divider1 : divider2;
    //   },
    // );

    return Column(
      children: <Widget>[
        ListTile(title: Text("商品列表")),
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('$index'),
              );
            },
          ),
        )
      ],
    );
  }
}
