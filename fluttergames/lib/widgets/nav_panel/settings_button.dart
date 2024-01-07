import 'package:flutter/material.dart';

import '../../globals.dart';
import '../../views/settings.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      child: SizedBox(
        width: 180,
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Settings()));
          },
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.settings,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Settings",
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