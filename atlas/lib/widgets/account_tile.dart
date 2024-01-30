import 'package:flutter/material.dart';

import '../models/account.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({super.key, required this.account});

  final Account account;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child: Row(
        children: [
          Text(account.title)
        ],
      ),
    );
  }
}