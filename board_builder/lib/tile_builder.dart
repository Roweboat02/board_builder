import 'tile.dart';

class TileBuilder {
  late Function(List<int>) moveCallback;
  late Map<String, Map> tileValues;

  TileBuilder(this.tileValues, this.moveCallback);

  set tileStates(Map<String, Map> tileVals) => tileValues = tileVals;

  Tile makeTile(List<int> location) {
    dynamic mapOut = tileValues[location.toString()];
    return Tile(location, mapOut["text"], mapOut["foreground"],
        mapOut["background"], moveCallback);
  }

  List<List<Tile>> makeTileGrid(List<int> shape) {
    List<List<Tile>> eventualTile = [];
    for (var i = 0; i < shape[0]; i++) {
      eventualTile.add([]);
      for (var j = 0; j < shape[1]; j++) {
        eventualTile[i].add(makeTile([i, j]));
      }
    }
    return eventualTile;
  }
}
