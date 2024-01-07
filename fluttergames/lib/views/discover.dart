import 'package:flutter/material.dart';

import '../widgets/book_list.dart';
import '../widgets/nav_panel.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Discover",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        shape: const Border(
          bottom: BorderSide(
            color: Colors.grey
          )
        ),
      ),
      body: const Row(
        children: [
          NavPanel(),
          Expanded(
            child: Column(
              children: [
                BookList(category: "Philosophy"),
                BookList(category: "Science"),
                BookList(category: "Psychology"),
              ],
            ),
          ),
        ],
      )
    );
  }
}
