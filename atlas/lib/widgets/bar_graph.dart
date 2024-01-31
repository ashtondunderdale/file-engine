import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class MonthlyAccountsGraph extends StatelessWidget {
  const MonthlyAccountsGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: BarChart(
        BarChartData(
          maxY: 100,
          minY: 0,
        )
      ),
    );
  }
}