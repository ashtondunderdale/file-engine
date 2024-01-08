import 'package:flutter/material.dart';
import 'package:google_books_api/google_books_api.dart';


Color textColour = const Color.fromARGB(255, 75, 75, 75);

List<Book> myBooks = [];
List<Book> favouriteBooks = [];
List<Book> booksRead = [];

int readingChallenge = 50;