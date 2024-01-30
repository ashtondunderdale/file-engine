import 'package:flutter/material.dart';
import 'package:fluttergames/data.dart';
import 'package:fluttergames/widgets/account_tile.dart';

class AccountHistory extends StatelessWidget {
  const AccountHistory({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8, top: 8),
                child: Text(
                  "ACCOUNTS",
                  style: TextStyle(
                    color: Color.fromARGB(255, 42, 42, 42),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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
      ),
    );
  }
}
