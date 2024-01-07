import 'package:flutter/material.dart';

import '../globals.dart';
import '../widgets/discover/book_list.dart';
import '../widgets/discover/logout_button.dart';
import '../widgets/nav_panel/nav_panel.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        leading: const LogoutButton(),
        title: Text(
          "Discover",
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
      body: const Row(
        children: [
          NavPanel(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BookList(category: "Philosophy"),
                  BookList(category: "Science"),
                  BookList(category: "Psychology"),
                  BookList(category: "Fiction"),
                  BookList(category: "Thriller"),
                  BookList(category: "Mystery"),
                  BookList(category: "Romance"),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
