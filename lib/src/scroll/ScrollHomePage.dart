import 'package:flutter/material.dart';
import './SingleChildScrollViewA.dart';
import './ListViewA.dart';
import './InfiniteListView.dart';
import './GridViewA.dart';
import './InfiniteGridView.dart';
import './StaggeredGridViewA.dart';
import './CustomScrollViewA.dart';
import './ScrollControllerA.dart';
import './ScrollNotificationA.dart';

class ScrollHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      // child: ListViewA(),
      // child: InfiniteListView(),
      // child: GridViewA(),
      // child: InfiniteGridView(),
      // child: StaggeredGridViewA(),
      // child: CustomScrollViewA(),
      // child: ScrollControllerA(),
      child: ScrollNotificationA(),
    );
  }
}
