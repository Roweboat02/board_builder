import 'package:chess_gui/board_builder/tile_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'color_rule_JSON.dart';

class Tile extends StatelessWidget {
  final List<int> locationCord;

  final String text;

  final Color foreground;

  final Color background;

  final Function callback;

  const Tile(
    this.locationCord, // acts a
    this.text,
    this.foreground,
    this.background,
    this.callback, {
    super.key,
  });

  void onPressed() {
    callback(locationCord);
  }

  /*
  Haven't been able to force buttons to be squares
  Possibly set width to height or vice versa
  */

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(1.0),
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
              minimumSize: MaterialStateProperty.all(const Size(10, 10)),
              shape: MaterialStateProperty.all(const BeveledRectangleBorder()),
              backgroundColor: MaterialStateProperty.all(background),
              foregroundColor: MaterialStateProperty.all(foreground)),
          child: Align(
              // alignment: Alignment.center, child: Icon(Icons.access_alarm))),
              alignment: Alignment.center,
              child: Text(text, style: TextStyle(fontSize: 28)))),
    );
  }
}
