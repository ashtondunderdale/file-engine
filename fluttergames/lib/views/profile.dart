import 'package:flutter/material.dart';

import '../globals.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: textColour,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        shape: const Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 214, 214, 214)
          )
        ),
      ),
      body: Center(
        child: Container(
          width: 800,
          height: 600,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 230, 230, 230),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your Goal: 0 / $readingChallenge books read",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 74, 74, 74),
                    fontSize: 36,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Text(
                        "Ashton Dunderdale",
                        style: TextStyle(
                          fontSize: 24
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 80),
                      child: Text(
                        "55 Books",
                        style: TextStyle(
                          fontSize: 24
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}