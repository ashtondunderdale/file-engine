import 'package:flutter/material.dart';
import 'package:google_books_api/google_books_api.dart';

import '../../globals.dart';
import '../../services/book_api.dart';
import 'book_item.dart';

class BookList extends StatelessWidget {
  const BookList({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Text(
              category.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: textColour,
              ),
            ),
          ),
        ),
        FutureBuilder<List<Book>>(
          future: getBooks(category),
          builder: (context, snapshot)
          {
            if (snapshot.connectionState == ConnectionState.waiting) 
            {
              return const Center(child: CircularProgressIndicator());
            } 
            else if (snapshot.hasError)
            {
              return Center(child: Text('Error: ${snapshot.error}'));
            } 
            else if (snapshot.hasData) 
            {
              List<BookItem> bookItemList = snapshot.data!
                .map((book) => BookItem(book: book)
                ).toList();
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: bookItemList.length,
                    itemBuilder: (context, index) 
                    {
                      return bookItemList[index]; 
                    },
                  ),
                ),
              );
            } 
            else 
            {
              return const Center(child: Text('No data available.'));
            }
          },
        ),
      ],
    );
  }
}