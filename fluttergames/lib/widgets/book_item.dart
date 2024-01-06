import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({Key? key, required this.imageLinks});

  final Map<String, Uri>? imageLinks;

  @override
  Widget build(BuildContext context) {

    String smallThumbnailUrl = imageLinks?['smallThumbnail']?.toString() ?? '';
    
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        width: 180,
        color: const Color.fromARGB(255, 233, 233, 233),
        child: Column(
          children: [
            Image.network("http://books.google.com/books/content?id=2nyKBgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"),
          ],
        ),
      ),
    );
  }
}
