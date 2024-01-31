import 'package:flutter/material.dart';

class MonthHistory extends StatefulWidget {
  MonthHistory({super.key});

  final List<String> months =  [
    "January", "February", "March", "April", "May", "June", "July", 
    "August", "September", "October", "November", "December"
  ];

  @override
  State<MonthHistory> createState() => _MonthHistoryState();
}

class _MonthHistoryState extends State<MonthHistory> {

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        child: Row(
          children: [

          ],
        ),
      ),
    );
  }
}