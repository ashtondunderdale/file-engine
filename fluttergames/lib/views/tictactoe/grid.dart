import 'package:flutter/material.dart';
import 'package:fluttergames/views/tictactoe/tile.dart';

class Grid extends StatelessWidget {
  Grid({Key? key});

  final List<int> tileindex = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  
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
          itemCount: tileindex.length,
          itemBuilder: (context, index) {
            return Tile(index: tileindex[index], symbol: "Empty",);
          },
        ),
      ),
    );
  }
}
