import 'package:flutter/material.dart';

import '../widgets/book_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book View"),
        shape: const Border(
          bottom: BorderSide(
            color: Colors.grey
          )
        ),
      ),
      body: const Column(
        children: [
          BookList(category: "Philosophy"),
          BookList(category: "Science"),
          BookList(category: "Psychology"),
        ],
      )
    );
  }
}
