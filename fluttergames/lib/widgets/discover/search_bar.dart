import 'package:flutter/material.dart';

class BookSearchBar extends StatelessWidget {
  final ValueChanged<String> onSubmitted;

  BookSearchBar({super.key, required this.onSubmitted});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: 400,
        height: 40,
        color: const Color.fromARGB(255, 234, 234, 234),
        child: TextField(
          controller: searchController,
          decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            labelText: "Search categories...",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.search),
          ),
          onSubmitted: onSubmitted,
        ),
      ),
    );
  }
}
