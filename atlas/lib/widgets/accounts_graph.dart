import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample extends StatelessWidget {
  final List<double> monthlyData = [10.0, 15.0, 8.0, 12.0, 20.0, 18.0, 25.0, 16.0, 22.0, 30.0, 28.0, 35.0];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.center,
          titlesData: FlTitlesData(
            leftTitlesMargin: 10,
            rightTitlesMargin: 10,
            bottomTitlesMargin: 10,
            leftTitles: SideTitles(showTitles: true, reservedSize: 30),
            bottomTitles: SideTitles(
              showTitles: true,
              getTitles: (double value) {
                return '${(value + 1).toInt()}'; // Display month number
              },
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: true),
          barGroups: _createBarGroups(),
        ),
      ),
    );
  }

  List<BarChartGroupData> _createBarGroups() {
    List<BarChartGroupData> barGroups = [];
    for (int i = 0; i < monthlyData.length; i++) {
      barGroups.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              y: monthlyData[i],
              width: 16,
              colors: [Colors.blue],
            ),
          ],
        ),
      );
    }
    return barGroups;
  }
}