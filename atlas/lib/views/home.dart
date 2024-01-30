import 'package:flutter/material.dart';
import 'package:fluttergames/widgets/profile_card.dart';

import '../models/account.dart';
import '../models/profile.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 206, 206, 206),
              width: 200,
              height: MediaQuery.of(context).size.height,
              child: const Column(
                children: [
                  // main stuff
                ],
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 121, 121, 121),
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