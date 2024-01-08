import 'package:flutter/material.dart';
import 'package:google_books_api/google_books_api.dart';

import '../globals.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key, required this.book});

  final Book book;

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.book.volumeInfo.title,
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
                widget.book.volumeInfo.imageLinks?['smallThumbnail']?.toString() ?? '',
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
                        widget.book.volumeInfo.title,
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
                        "By ${widget.book.volumeInfo.authors.join(', ')} | ${widget.book.volumeInfo.publishedDate?.year}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: textColour,
                          fontSize: 11
                        ),
                      ),
                    ),
                  ),
                  for (var category in widget.book.volumeInfo.categories)
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
                      widget.book.volumeInfo.description.length > 300
                        ? "${widget.book.volumeInfo.description.substring(0, 300)}..."
                        : widget.book.volumeInfo.description,
                      style: const TextStyle(
                        fontSize: 14
                      ),
                    ), 
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Tooltip(
                      message: myBooks.contains(widget.book) ? "Saved" : "Save",
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: IconButton(
                          onPressed: () {
                            if (myBooks.contains(widget.book)){
                              myBooks.remove(widget.book);
                            }
                            else{
                              myBooks.add(widget.book);
                            }
                            setState(() {
                              
                            });
                          }, 
                          icon: Icon(
                            myBooks.contains(widget.book) ? Icons.check : Icons.bookmark,        
                            color: myBooks.contains(widget.book) ? const Color.fromARGB(255, 85, 188, 89) : Colors.grey,             
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Tooltip(
                      message: favouriteBooks.contains(widget.book) ? "Unfavourite" : "Favourite",
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () {
                            if (favouriteBooks.contains(widget.book)){
                              favouriteBooks.remove(widget.book);
                            }
                            else{
                              favouriteBooks.add(widget.book);
                            }
                            setState(() {
                              
                            });
                          }, 
                          icon: Icon(
                            Icons.star,
                            color: favouriteBooks.contains(widget.book) ? const Color.fromARGB(255, 195, 178, 25) : Colors.grey,
                          ),
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
