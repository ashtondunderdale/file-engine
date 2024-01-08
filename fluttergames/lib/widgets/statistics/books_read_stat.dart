import 'package:flutter/material.dart';
import 'package:fluttergames/globals.dart';

class BooksReadStat extends StatelessWidget {
  const BooksReadStat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16),
      child: Text(
        " You have read: ${booksRead.length} book",
        style: const TextStyle(
          fontSize: 32,
          color: Colors.grey,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}