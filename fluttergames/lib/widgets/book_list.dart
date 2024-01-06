import 'package:flutter/material.dart';

import 'book_item.dart';

class BookList extends StatelessWidget {
  const BookList({super.key, required this.bookItemList});

  final List<BookItem> bookItemList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.grey,
      child: Text(
        bookItemList[0].title
      ),
    );
  }
}