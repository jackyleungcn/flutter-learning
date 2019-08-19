import 'package:flutter/material.dart';
import './WillPopScopeA.dart';
import './InheritedWidgetB.dart';
import './ProviderA.dart';

class FunctionalHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: ProviderA(),
    );
  }
}
