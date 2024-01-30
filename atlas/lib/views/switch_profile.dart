import 'package:flutter/material.dart';
import 'package:fluttergames/data.dart';

import 'home.dart';

class SwitchProfile extends StatelessWidget {
  const SwitchProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (var profile in profiles)
            TextButton(
              onPressed: () {
                activeProfile = profile;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Home(profile: profile,)),
                );
              },
              child: Text(
                profile.name
              ),
            ), 
        ],
      ),
    );
  }
}