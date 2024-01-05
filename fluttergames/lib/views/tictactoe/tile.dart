import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  const Tile({super.key});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 210, 210, 210),
        border: Border.all(color: Colors.grey)
      ),
    );
  }
}