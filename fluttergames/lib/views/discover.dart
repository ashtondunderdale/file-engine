import 'package:flutter/material.dart';

import '../globals.dart';
import '../widgets/discover/book_list.dart';
import '../widgets/discover/logout_button.dart';
import '../widgets/discover/search_bar.dart';
import '../widgets/nav_panel/nav_panel.dart';

class Discover extends StatefulWidget {
  Discover({super.key});

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List<String> categories = [
    "Philosophy", "Science", "Psychology", "Fiction", "Thriller", "Mystery", 
    "Romance", "History", "Fantasy"
  ];

  List<String> filteredCategories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        leading: const LogoutButton(),
        actions: [
          BookSearchBar(onSubmitted: (query) {
            filterCategories(query);
          }),
        ],
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (String category in filteredCategories.isNotEmpty ? filteredCategories: categories) 
                    BookList(category: category),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }

  void filterCategories(String query) {
    setState(() {
      filteredCategories = categories
          .where((category) => category.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }
}
