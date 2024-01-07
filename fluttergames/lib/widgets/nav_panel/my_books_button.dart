import 'package:flutter/material.dart';

import '../../globals.dart';

class MyBooksButton extends StatelessWidget {
  const MyBooksButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
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
    );
  }
}