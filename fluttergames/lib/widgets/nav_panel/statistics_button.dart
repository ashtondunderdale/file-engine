import 'package:flutter/material.dart';

import '../../globals.dart';

class StatisticsButton extends StatelessWidget {
  const StatisticsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.auto_graph,
                size: 20,
                color: Colors.grey,
              ),
            ),
            Text(
              "Reading Statistics",
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