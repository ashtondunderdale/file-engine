import 'package:flutter/material.dart';
import 'package:fluttergames/widgets/discover/book_item.dart';
import 'package:google_books_api/google_books_api.dart';

import '../globals.dart';


class MyBooks extends StatelessWidget {
  const MyBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Books",
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
      body: myBooks.isEmpty && favouriteBooks.isEmpty ? 
      const Center(
        child: Text(
          "Nothing to see here...",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 54,
            color: Colors.grey
          ),
        ),
      ) : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              "Favourites (${favouriteBooks.length})",
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 78, 78, 78)
              ),
            ),
          ),
          Row(
            children: [
              for (Book book in favouriteBooks)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BookItem(book: book),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 40),
            child: Text(
              "Saved (${myBooks.length}) ",
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 78, 78, 78)
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (Book book in myBooks)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BookItem(book: book),
              )
            ],
          )
        ],
      ),
    );
  }
}
