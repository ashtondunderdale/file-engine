import 'package:flutter/material.dart';
import 'package:fluttergames/globals.dart';
import 'package:google_books_api/google_books_api.dart';

class BooksReadStat extends StatelessWidget {
  const BooksReadStat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, bottom: 32),
            child: Text(
              " You have read: ${booksRead.length} book(s)",
              style: const TextStyle(
                fontSize: 32,
                color: Colors.grey,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Favourite Genre: ${getFavouriteGenre()}",
                style: const TextStyle(
                  fontSize: 32,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
                ),
            ),
          ),
        )
      ],
    );
  }

String getFavouriteGenre() {
    Map<String, int> categoryCount = {};

    for (Book book in booksRead) {
      if (book.volumeInfo.categories.isNotEmpty) {
        String category = book.volumeInfo.categories.first; 
        categoryCount[category] = (categoryCount[category] ?? 0) + 1;
      }
    }

    String mostFrequentCategory = "";
    int maxCount = 0;

    categoryCount.forEach((category, count) {
      if (count > maxCount) {
        mostFrequentCategory = category;
        maxCount = count;
      }
    });
    return mostFrequentCategory.isEmpty ? "Not enough reading data" : mostFrequentCategory;
  }
}