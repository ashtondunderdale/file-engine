import 'package:flutter/material.dart';

import '../../views/login.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
      },
      icon: const Icon(
        Icons.logout,
        color: Colors.grey,
      ),
    );
  }
}