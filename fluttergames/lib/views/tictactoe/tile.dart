import 'package:flutter/material.dart';
import 'package:fluttergames/views/tictactoe/tictactoe.dart';

class Tile extends StatefulWidget {
  Tile({super.key, required this.index, required this.symbol});

  final int index;
  String symbol;

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {

    TicTacToe.tileList.add(widget);

    return GestureDetector(
      onTap: () {
        if (widget.symbol == "Empty"){
          setState(() {
            widget.symbol = "Cross";  
          });
        }

        if (TicTacToe.isThreeInARow("Cross")){
          print("CROSS WIN");
        }
        if (TicTacToe.isThreeInARow("Circle")){
          print("CIRCLE WIN");
        }
      },
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 210, 210, 210),
          border: Border.all(color: Colors.grey)
        ),
        child: Icon(
          widget.symbol == "Empty" ? null : (widget.symbol == "Cross" ? Icons.close : Icons.circle),
          size: 100,
          color: Colors.white,
        ),
      ),
    );
  }
}