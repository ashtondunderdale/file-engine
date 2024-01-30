import 'package:flutter/material.dart';
import 'package:fluttergames/widgets/navigation_panel.dart';

class AddAccount extends StatelessWidget {
  AddAccount({super.key});

  TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const NavigationPanel(),
          const Spacer(),
          Center(
            child: Container(
              width: 1000,
              height: 800,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 230, 230),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  Column(),
                  Column()
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}