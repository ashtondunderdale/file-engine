import 'package:flutter/material.dart';
import 'package:fluttergames/views/tictactoe/grid.dart';

import 'package:fluttergames/views/tictactoe/tile.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Grid(),
    );
  }
}