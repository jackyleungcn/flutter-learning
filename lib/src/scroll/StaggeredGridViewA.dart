import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(3, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(4, 1),
];

List<Widget> _tiles = const <Widget>[
  const _IconCard(Colors.green, Icons.widgets),
  const _IconCard(Colors.lightBlue, Icons.wifi),
  const _IconCard(Colors.amber, Icons.panorama_wide_angle),
  const _IconCard(Colors.brown, Icons.map),
  const _IconCard(Colors.deepOrange, Icons.send),
  const _IconCard(Colors.indigo, Icons.airline_seat_flat),
  const _IconCard(Colors.red, Icons.bluetooth),
  const _IconCard(Colors.pink, Icons.battery_alert),
  const _IconCard(Colors.purple, Icons.desktop_windows),
  const _IconCard(Colors.blue, Icons.radio),
];

class StaggeredGridViewA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new StaggeredGridView.count(
      crossAxisCount: 4,
      staggeredTiles: _staggeredTiles,
      children: _tiles,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      padding: const EdgeInsets.all(4.0),
    );
  }
}

class _IconCard extends StatelessWidget {
  const _IconCard(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(0.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
