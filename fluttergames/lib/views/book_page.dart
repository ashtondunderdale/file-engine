import 'package:flutter/material.dart';

import '../globals.dart';


class BookPage extends StatelessWidget {
  const BookPage({super.key, required this.bookTitle});

  final String bookTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          bookTitle,
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
