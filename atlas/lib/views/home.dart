import 'package:flutter/material.dart';
import 'package:fluttergames/widgets/account_history.dart';
import 'package:fluttergames/widgets/navigation_panel.dart';

import '../models/profile.dart';
import '../widgets/profile_card.dart';


class Home extends StatelessWidget {
  Home({super.key, required this.profile});

  Profile profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shape: const Border(
          bottom: BorderSide(color: Color.fromARGB(255, 212, 212, 212))
        ),
        toolbarHeight: 80,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dashboard",
              style: TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 73, 73, 73),
                letterSpacing: 1
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Good Morning, Ashton",
                style: TextStyle(
                  fontSize: 16, 
                  color: Colors.grey,
                  letterSpacing: 1,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          NavigationPanel(),
          Expanded(
            child: SizedBox(
              width: 200,
              height: MediaQuery.of(context).size.height,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AccountHistory()
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 242, 242, 242),
            width: 300,
            height: MediaQuery.sizeOf(context).height,
            child: const Column(
              children: [
                ProfileCard(),
              ],
            ),
          )
        ],
      )
    );
  }
}