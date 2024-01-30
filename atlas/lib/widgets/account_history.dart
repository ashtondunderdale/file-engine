import 'package:flutter/material.dart';
import 'package:fluttergames/data.dart';
import 'package:fluttergames/widgets/account_tile.dart';

class AccountHistory extends StatelessWidget {
  const AccountHistory({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 200,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 193, 193, 193),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8, top: 8),
              child: Text(
                "Accounts History",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: activeProfile!.accounts.length,
              itemBuilder: (BuildContext context, int index) {
                var account = activeProfile!.accounts[index];
                return AccountTile(account: account);
              },
            ),
          ),
        ],
      ),
    );
  }
}
