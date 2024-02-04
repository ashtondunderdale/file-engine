import 'package:flutter/material.dart';
import 'package:fluttergames/data.dart';
import 'package:fluttergames/widgets/account_tile.dart';

import '../services/database.dart';

class AccountHistory extends StatefulWidget {
  const AccountHistory({super.key});

  @override
  State<AccountHistory> createState() => _AccountHistoryState();
}

class _AccountHistoryState extends State<AccountHistory> {

  @override
  void initState() {
    initialiseAccounts();   
    super.initState();
  }

  void initialiseAccounts() async {
      await DatabaseService.loadActiveAccounts();
      setState(() {});
  }

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
                padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
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
