import 'package:flutter/material.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: MediaQuery.of(context).size.height,
      color: const Color.fromARGB(255, 229, 229, 229),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Tooltip(
            message: 'Tracker',
            child: IconButton(
              icon: const Icon(Icons.abc),
              onPressed: () {

              },
            ),
          ),
        ],
      ),
    );
  }
}
