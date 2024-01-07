import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({Key? key, required this.imageLinks});

  final Map<String, Uri>? imageLinks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Image.network(imageLinks?['smallThumbnail']?.toString() ?? ''),
    );
  }
}
