import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/account.dart';

class AccountTile extends StatefulWidget {
  const AccountTile({super.key, required this.account});

  final Account account;

  @override
  State<AccountTile> createState() => _AccountTileState();
}

class _AccountTileState extends State<AccountTile> {
  @override
  Widget build(BuildContext context) {
    NumberFormat currencyFormat = NumberFormat.currency(locale: 'en_US', symbol: '');

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
                  widget.account.title,
                  style: TextStyle(
                    color: widget.account.type == "Rent" ? const Color.fromARGB(255, 255, 130, 121) : 
                          (widget.account.type == "Salary" ? const Color.fromARGB(255, 112, 170, 114) : Colors.grey)
                  ),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              child: Text(
                widget.account.type,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              child: Text(
                widget.account.isIncome ? "  £${currencyFormat.format(widget.account.amount)}" : "- £${currencyFormat.format(widget.account.amount)}" ,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              child: Text(
                widget.account.date,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              child: Text(
                widget.account.isIncome == true ? "Income" : "Expense",
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