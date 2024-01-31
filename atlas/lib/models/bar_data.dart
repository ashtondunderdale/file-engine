import 'package:fluttergames/models/bar.dart';

class BarData {
  final double januaryAmount;
  final double februaryAmount;
  final double marchAmount;
  final double aprilAmount;
  final double mayAmount;
  final double juneAmount;
  final double julyAmount;
  final double augustAmount;
  final double septemberAmount;
  final double octoberAmount;
  final double novemberAmount;
  final double decemberAmount;

  BarData({
    required this.januaryAmount,
    required this.februaryAmount,
    required this.marchAmount,
    required this.aprilAmount,
    required this.mayAmount,
    required this.juneAmount,
    required this.julyAmount,
    required this.augustAmount,
    required this.septemberAmount,
    required this.octoberAmount,
    required this.novemberAmount,
    required this.decemberAmount,
  });

  List<Bar> barData = [];

  void initialiseBarData() {
    barData = [
      Bar(x: 0, y: januaryAmount),
      Bar(x: 0, y: februaryAmount),
      Bar(x: 0, y: marchAmount),
      Bar(x: 0, y: aprilAmount),
      Bar(x: 0, y: mayAmount),
      Bar(x: 0, y: juneAmount),
      Bar(x: 0, y: julyAmount),
      Bar(x: 0, y: augustAmount),
      Bar(x: 0, y: septemberAmount),
      Bar(x: 0, y: octoberAmount),
      Bar(x: 0, y: novemberAmount),
      Bar(x: 0, y: decemberAmount),
    ];
  }
}

