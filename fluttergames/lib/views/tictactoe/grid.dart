import 'package:flutter/material.dart';
import 'package:fluttergames/views/tictactoe/tictactoe.dart';
import 'package:fluttergames/views/tictactoe/tile.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key});

  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color.fromARGB(255, 244, 244, 244),
        width: 400,
        height: 400,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: TicTacToe.tileList.length,
          itemBuilder: (context, index) {
            return Tile(
              index: index,
              symbol: TicTacToe.tileList[index].symbol,
              onTileTapped: updateGrid,
            );
          },
        ),
      ),
    );
  }

  void updateGrid() {
    setState(() {

    });
  }
}
