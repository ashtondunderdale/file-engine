import 'package:fluttergames/views/tictactoe/tile.dart';

class TicTacToe{

  static List<Tile> tileList = [];

  static bool isThreeInARow(String symbol){
    
    for (var i = 0; i < 3; i++) {
      if (tileList[i * 3].symbol == symbol &&
          tileList[i * 3 + 1].symbol == symbol &&
          tileList[i * 3 + 2].symbol == symbol) return true;
    }

    for (var i = 0; i < 3; i++) {
      if (tileList[i].symbol == symbol &&
          tileList[i + 3].symbol == symbol &&
          tileList[i + 6].symbol == symbol) return true;
    }

    if (tileList[2].symbol == symbol &&
        tileList[4].symbol == symbol &&
        tileList[6].symbol == symbol) return true;

    if (tileList[0].symbol == symbol &&
      tileList[4].symbol == symbol &&
      tileList[8].symbol == symbol) return true;   

    return false;
  }
}