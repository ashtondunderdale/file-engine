import 'package:flutter/material.dart';

import '../globals.dart';
import '../widgets/discover/book_list.dart';
import '../widgets/discover/logout_button.dart';
import '../widgets/discover/search_bar.dart';
import '../widgets/nav_panel/nav_panel.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {

  List<String> defaultCategories = [
    "philosophy", "science", "psychology", "fiction", "thriller", "mystery", 
    "romance", "history", "fantasy", "horror", "humor", "poetry", "feminism","spirituality",
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
                children: buildBookLists(), 
              ),
            ),
          ),
        ],
      )
    );
  }

 List<Widget> buildBookLists() {
  List<Widget> bookLists = [];

  if (filteredCategories.isNotEmpty) 
  {
    for (String category in filteredCategories)
    {
      for (int i = 0; i < 4; i++)
      {
        int startIndex = i * 40;
        bookLists.add(BookList(category: category, startIndex: startIndex));
      }
    }
  } 
  else 
  {
    for (String category in defaultCategories)
    {
      for (int i = 0; i < 1; i++) {
        int startIndex = i * 40;
        bookLists.add(BookList(category: category, startIndex: startIndex));
      }
    }
  }
  return bookLists;
}

  void filterCategories(String query) async {
    setState(() {
      if (query != "" && defaultCategories.contains(query)) 
      {
        filteredCategories = defaultCategories
        .where((category) => category.toLowerCase()
        .contains(query.toLowerCase()))
        .toList();
      }
      else
      {
        filteredCategories.clear();
      }
    });
  }
}
