import 'package:flutter/material.dart';
import 'package:fluttergames/views/my_books.dart';

import '../../globals.dart';

class MyBooksButton extends StatelessWidget {
  const MyBooksButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: SizedBox(
        width: 180,
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MyBooks()));
          },
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.book,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              Text(
                "My Books",
                style: TextStyle(
                  color: textColour,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}