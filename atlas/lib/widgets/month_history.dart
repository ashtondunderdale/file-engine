import 'package:flutter/material.dart';

class MonthHistory extends StatefulWidget {
  MonthHistory({super.key});

  final List<String> months =  [
    "January", "February", "March", "April", "May", "June", "July", 
    "August", "September", "October", "November", "December"
  ];

  final List<double> monthlyExpense = [
    10, 20, 43, 12, 30, 20, 50, 102, 232, 3, 1, 30
  ];

  @override
  State<MonthHistory> createState() => _MonthHistoryState();
}

class _MonthHistoryState extends State<MonthHistory> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        child: Row(
          children: [
            // for (var month in widget.months)
            //   Padding(
            //     padding: const EdgeInsets.only(left: 16, right: 16),
            //     child: Container(
            //       width: 200,
            //       height: 300,
            //       color: Colors.grey,
            //     ),
            //   )
          ],
        ),
      ),
    );
  }
}