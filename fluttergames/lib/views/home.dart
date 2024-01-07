import 'package:flutter/material.dart';
import 'package:google_books_api/google_books_api.dart';

import '../widgets/book_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          BookList(category: "Philosophy"),
          BookList(category: "Fiction"),
          BookList(category: "Romance"),
        ],
      )
    );
  }
}
