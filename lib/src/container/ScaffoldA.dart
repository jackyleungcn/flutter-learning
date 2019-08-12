import 'package:flutter/material.dart';

class ScaffoldA extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldA>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;

  TabController _tabController;
  List tabs = ["最新", "最热"];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //导航栏
        title: Text("有车以后"),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
        bottom: TabBar(
            //生成Tab菜单
            controller: _tabController,
            tabs: tabs.map((e) => Tab(text: e)).toList()),
      ),
      drawer: new MyDrawer(), //抽屉
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          //创建3个Tab页
          return Container(
            alignment: Alignment.center,
            child: Text(e, textScaleFactor: 3),
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.people)),
            SizedBox(), //中间位置空出
            IconButton(icon: Icon(Icons.drive_eta)),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
      floatingActionButton: FloatingActionButton(
          //悬浮按钮
          child: Icon(Icons.add),
          onPressed: _onAdd),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd() {}
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        //移除抽屉菜单顶部默认留白
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child:  Image.network('https://res.suv666.com/static/common/auto_home_pc/img/97498a6.png', width: 150,),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Builder(builder: (context) {
                      return IconButton(
                        icon: Icon(Icons.settings, color: Colors.grey), //自定义图标
                        onPressed: () {
                          // 打开抽屉菜单
                          Scaffold.of(context).openEndDrawer();
                        },
                      );
                    }),
                    title: const Text('设置'),
                  ),
                  ListTile(
                    leading: Builder(builder: (context) {
                      return IconButton(
                        icon: Icon(Icons.close, color: Colors.grey), //自定义图标
                        onPressed: () {
                          // 打开抽屉菜单
                          Scaffold.of(context).openEndDrawer();
                        },
                      );
                    }),
                    title: const Text('关闭'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
