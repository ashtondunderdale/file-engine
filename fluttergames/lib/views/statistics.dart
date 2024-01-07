import 'package:flutter/material.dart';

import '../globals.dart';


class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Statistics",
          style: TextStyle(
            color: textColour,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        shape: const Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 214, 214, 214)
          )
        ),
      ),
      body: Container(),
    );
  }
}
