import 'package:flutter/material.dart';
import 'package:google_books_api/google_books_api.dart';

import '../services/book_api.dart';
import 'book_item.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Book>>(
      future: getBooks(),
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
            .map((book) => BookItem(
              imageLinks: book.volumeInfo.imageLinks
              )
            ).toList();
          return SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bookItemList.length,
              itemBuilder: (context, index) 
              {
                return bookItemList[index]; 
              },
            ),
          );
        } else 
        {
          return const Center(child: Text('No data available.'));
        }
      },
    );
  }
}