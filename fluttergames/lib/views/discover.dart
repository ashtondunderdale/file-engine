import 'package:flutter/material.dart';

import '../globals.dart';
import '../widgets/discover/book_list.dart';
import '../widgets/discover/logout_button.dart';
import '../widgets/nav_panel/nav_panel.dart';

class Discover extends StatelessWidget {
  Discover({super.key});

  final List<String> categories = ["Philosophy", "Science", "Psychology", "Fiction", "Thriller", "Mystery", 
                                  "Romance", "History", "Fantasy"];

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
      body: Row(
        children: [
          const NavPanel(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  for (String category in categories)
                    BookList(category: category),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
