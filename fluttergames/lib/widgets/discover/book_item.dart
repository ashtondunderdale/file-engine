import 'package:flutter/material.dart';
import 'package:google_books_api/google_books_api.dart';

import '../../views/book_page.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => BookPage(book: book)));
        },
        child: Image.network(book.volumeInfo.imageLinks?['smallThumbnail']?.toString() ?? '')
      ),
    );
  }
}
