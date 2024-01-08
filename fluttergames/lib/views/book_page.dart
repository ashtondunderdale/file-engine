import 'package:flutter/material.dart';
import 'package:google_books_api/google_books_api.dart';

import '../globals.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          book.volumeInfo.title,
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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 32),
              child: Image.network(
                book.volumeInfo.imageLinks?['smallThumbnail']?.toString() ?? '',
              ),
            ),
            Container(
              width: 800,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromARGB(255, 234, 234, 234),
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Text(
                        book.volumeInfo.title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: textColour,
                          letterSpacing: 1
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Text(
                        "By ${book.volumeInfo.authors.join(', ')} | ${book.volumeInfo.publishedDate?.year}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: textColour,
                          fontSize: 11
                        ),
                      ),
                    ),
                  ),
                  for (var category in book.volumeInfo.categories)
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                          child: Text(
                            category,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: textColour,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      book.volumeInfo.description.length > 300
                        ? "${book.volumeInfo.description.substring(0, 300)}..."
                        : book.volumeInfo.description,
                      style: const TextStyle(
                        fontSize: 14
                      ),
                    ), 
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Tooltip(
                      message: "Save",
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: IconButton(
                          onPressed: () {
                            myBooks.add(book);
                          }, 
                          icon: const Icon(
                            Icons.bookmark,                     
                          )
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
