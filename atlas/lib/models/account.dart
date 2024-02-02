class Account {
  String title;
  String type;
  double amount;
  DateTime date;
  bool isIncome;
  String month;

  Account({
    required this.title,
    required this.type,
    required this.amount,
    required this.date,
    required this.isIncome,
    required this.month,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'type': type,
      'amount': amount,
      'date': date,
      'isIncome': isIncome,
      'month': month,
    };
  }
}
