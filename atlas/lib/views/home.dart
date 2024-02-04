import 'package:flutter/material.dart';
import 'package:fluttergames/data.dart';
import 'package:fluttergames/services/database.dart';
import 'package:fluttergames/widgets/account_history.dart';
import 'package:fluttergames/widgets/navigation_panel.dart';

import '../models/profile.dart';
import '../widgets/profile_card.dart';

class Home extends StatefulWidget {
  Home({super.key, required this.profile});

  Profile profile;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    initialiseBalance();
    setState(() {});
    super.initState();
  }

  void initialiseBalance() async {

    Profile? activeProfile = await DatabaseService.loadProfile("yourProfileId");

    if (activeProfile != null) {
      await DatabaseService.setActiveProfile(activeProfile);
      print("Active profile set successfully.");
    } else {
      print("Failed to load profile.");
    }

    activeProfile!.balance = await DatabaseService.loadProfileBalance();
    print(activeProfile!.balance);
  }

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
            Row(
              children: [
                Text(
                  "ATLAS",
                  style: TextStyle(
                    fontSize: 28, 
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 73, 73, 73),
                    letterSpacing: 1
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                  ),
                )
              ],
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
          const NavigationPanel(),
          Expanded(
            child: SizedBox(
              width: 200,
              height: MediaQuery.of(context).size.height,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 32, right: 32),
                      child: Text("data"),
                    ),
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