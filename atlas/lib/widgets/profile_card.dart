import 'package:flutter/material.dart';

import '../data.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 160,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 221, 221, 221),
      ),
      child: Text(
        profiles.isEmpty ? activeProfile?.balance.toString() ?? "None" : "£${profiles.first.balance}",
        style: const TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          letterSpacing: 2
        ),
      ),
    );
  }
}