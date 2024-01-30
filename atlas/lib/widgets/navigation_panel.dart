import 'package:flutter/material.dart';
import 'package:fluttergames/data.dart';
import 'package:fluttergames/views/switch_profile.dart';

import '../views/home.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 229, 229, 229),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: IconButton(
              icon: const Icon(
                Icons.dashboard,
                color: Colors.grey,
                size: 32,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Home(profile: activeProfile!,)),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.grey,
                size: 32,
              ),
              onPressed: () {
            
              },
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: IconButton(
              icon: const Icon(
                Icons.change_circle,
                color: Colors.grey,
                size: 32,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SwitchProfile()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
