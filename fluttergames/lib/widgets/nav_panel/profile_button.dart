import 'package:flutter/material.dart';
import 'package:fluttergames/views/profile.dart';

import '../../globals.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      child: SizedBox(
        width: 180,
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));
          },
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.person,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Profile",
                style: TextStyle(
                  color: textColour,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}