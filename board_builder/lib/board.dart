import 'package:chess_gui/board_builder/tile_values.dart';
import 'package:flutter/material.dart';

import 'tile.dart';
import 'tile_builder.dart';

class Board extends StatelessWidget {
  final List<int> shape;
  late List<List<Tile>> tiles;
  TileBuilder tileBuilder;

  Board(this.shape, this.tileBuilder, {super.key}) {
    tiles = tileBuilder.makeTileGrid(shape);
  }

  void change(List<int> location) {
    tiles[location[0]][location[1]] = tileBuilder.makeTile(location);
  }

  Widget drawTiles() {
    List<Widget> col = [];
    for (var i = 0; i < tiles.length; i++) {
      col.add(Row(
        children: tiles[i],
      ));
    }
    return Column(
      children: col,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: drawTiles());
  }
}
