import 'package:flutter/material.dart';

class FontTextIcon extends StatelessWidget {
  Widget build(BuildContext context) {
    return Text(
      this._getIcon(),
      style: TextStyle(
          fontFamily: "MaterialIcons", fontSize: 24.0, color: Colors.green),
    );
  }

  _getIcon() {
    String icons = "";
    // accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
    // error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
    // fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    return icons;
  }
}
