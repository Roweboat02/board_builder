import 'package:flutter/material.dart';

Color backgroundChess(List<int> cords,
    {List<Color> colors = const [Color(0xFFFFF9C4), Color(0xFF795548)]}) {
  int k = 0;
  for (int i in cords) {
    k += i;
  }
  k = k % 2;
  return colors[k];
}

Color foregroundChess(List<int> cords,
    {List<Color> colors = const [Color(0xFFFFF9C4), Color(0xFF795548)]}) {
  int k = 0;
  for (int i in cords) {
    k += i;
  }
  k = k % 2;
  return colors.reversed.toList(growable: false)[k];
}

class StringToUI {
  static Map<String, List> stingToPiece = {
    "": [" ", const Color.fromARGB(0, 255, 255, 255)],
    " ": [" ", const Color.fromARGB(0, 255, 255, 255)],
    "P": ["\u265F", const Color.fromARGB(255, 255, 255, 255)],
    "B": ["\u265D", const Color.fromARGB(255, 255, 255, 255)],
    "N": ["\u265E", const Color.fromARGB(255, 255, 255, 255)],
    "R": ["\u265C", const Color.fromARGB(255, 255, 255, 255)],
    "Q": ["\u2655", const Color.fromARGB(255, 255, 255, 255)],
    "K": ["\u265A", const Color.fromARGB(255, 255, 255, 255)],
    "p": ["\u265F", const Color.fromARGB(255, 0, 0, 0)],
    "b": ["\u265D", const Color.fromARGB(255, 0, 0, 0)],
    "n": ["\u265E", const Color.fromARGB(255, 0, 0, 0)],
    "r": ["\u265C", const Color.fromARGB(255, 0, 0, 0)],
    "q": ["\u2655", const Color.fromARGB(255, 0, 0, 0)],
    "k": ["\u265A", const Color.fromARGB(255, 0, 0, 0)],
  };

  static Map<String, Map> getPieceList(List<List<String>> pieces) {
    Map<String, Map> out = {};
    for (var i = 0; i < pieces.length; i++) {
      for (var j = 0; j < pieces[i].length; j++) {
        List x = stingToPiece[pieces[i][j]]!;
        out[[i, j].toString()] = {
          "text": x[0],
          "foreground": x[1],
          "background": backgroundChess([i, j])
        };
      }
    }
    return out;
  }
}
