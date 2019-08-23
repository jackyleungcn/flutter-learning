import 'package:flutter/material.dart';
import './WillPopScopeA.dart';
import './InheritedWidgetB.dart';
import './ProviderA.dart';
import './FutureBuilderA.dart';
import './StreamBuilderA.dart';
import './AlertDialogA.dart';
import './ShowDialogA.dart';
import './SimpleDialogA.dart';
import './ShowListDialog.dart';

class FunctionalHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            ShowDialogA(),
            SimpleDialogA(),
            ShowListDialog(),
          ],
        ));
  }
}
