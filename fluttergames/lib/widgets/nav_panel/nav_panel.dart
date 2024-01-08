import 'package:flutter/material.dart';

import 'my_books_button.dart';
import 'profile_button.dart';
import 'settings_button.dart';
import 'statistics_button.dart';


class NavPanel extends StatelessWidget {
  const NavPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 800,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 253, 253, 253),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Column(
        children: [
          MyBooksButton(),
          StatisticsButton(),
          ProfileButton(),
          Spacer(),
          SettingsButton(),
        ],
      ),
    );
  }
}
