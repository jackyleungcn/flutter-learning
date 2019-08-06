import 'package:flutter/material.dart';

class ImageFromNetwork extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(
          image: NetworkImage(
              'https://res.suv666.com/static/common/auto_home_pc/img/97498a6.png'),
          width: 150.0,
        ),
        Image.network(
          'https://res.suv666.com/static/common/auto_home_pc/img/97498a6.png',
        ),
      ],
    );
  }
}
