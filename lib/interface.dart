import 'package:chess_gui/board_builder/board.dart';
import 'package:chess_gui/board_builder/tile_values.dart';
import 'package:flutter/material.dart';

import 'tile_builder.dart';

class Interface {
  List<int> shape = [8, 8];
  late Board board;
  late TileBuilder tileBuilder;

  Interface(List<List<String>> pieces, Function(List<int>) moveCallback) {
    tileBuilder = TileBuilder(StringToUI.getPieceList(pieces), moveCallback);
    board = Board(shape, tileBuilder);
  }
}
