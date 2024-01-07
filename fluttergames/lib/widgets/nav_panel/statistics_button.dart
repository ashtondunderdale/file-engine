import 'package:flutter/material.dart';

import '../../globals.dart';
import '../../views/statistics.dart';

class StatisticsButton extends StatelessWidget {
  const StatisticsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SizedBox(
        width: 180,
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Statistics()));
          },
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
      ),
    );
  }
}