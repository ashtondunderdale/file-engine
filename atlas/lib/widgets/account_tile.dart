import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/account.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context) {
    NumberFormat currencyFormat = NumberFormat.currency(locale: 'en_US', symbol: '');
    DateFormat dateFormat = DateFormat.yMd();

    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 4, right: 4),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: SizedBox(
                width: 160,
                child: Text(
                  account.title,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 102, 102, 102),
                  ),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              child: Text(
                account.type,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              child: Text(
                account.isIncome ? "  £${currencyFormat.format(account.amount)}" : "- £${currencyFormat.format(account.amount)}" ,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              child: Text(
                dateFormat.format(account.date),
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              child: Text(
                account.isIncome == true ? "Income" : "Expense",
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}