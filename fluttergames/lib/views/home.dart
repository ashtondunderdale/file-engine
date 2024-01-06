import 'package:flutter/material.dart';
import 'package:google_books_api/google_books_api.dart';

import '../services/book_api.dart';
import '../widgets/book_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Book>>(
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
                .map((book) => BookItem(title: book.volumeInfo.title))
                .toList();

            return ListView.builder(
              itemCount: bookItemList.length,
              itemBuilder: (context, index) 
              {
                return bookItemList[index]; 
              },
            );
          } else 
          {
            return const Center(child: Text('No data available.'));
          }
        },
      ),
    );
  }
}
