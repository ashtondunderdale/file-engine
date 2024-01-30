import 'package:flutter/material.dart';

import '../models/account.dart';
import '../models/profile.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<Profile> profiles = [
    Profile(name: "Current", balance: 5625.49, accountNumber: "60290155", bank: "Santander", entries: [
      Account(amount: 2.49, date: DateTime.now(), isIncome: true)
    ])
  ];

  Profile? activeProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 600,
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 221, 221, 221),
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Center(
              child: Text(
                profiles.isEmpty ? activeProfile?.balance.toString() ?? "None" : "£${profiles.first.balance}",
                style: const TextStyle(
                  fontSize: 96,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  letterSpacing: 2
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}