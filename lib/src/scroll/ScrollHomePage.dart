import 'package:flutter/material.dart';
import './SingleChildScrollViewA.dart';
import './ListViewA.dart';
import './InfiniteListView.dart';

class ScrollHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ListViewA(),
      // child: InfiniteListView(),
    );
  }
}
