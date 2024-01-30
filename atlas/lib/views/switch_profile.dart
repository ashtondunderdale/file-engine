import 'package:flutter/material.dart';
import 'package:fluttergames/data.dart';

import 'home.dart';

class SwitchProfile extends StatelessWidget {
  const SwitchProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Text(
                    "Choose a profile",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var profile in profiles)
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: GestureDetector(
                          onTap: () {
                            activeProfile = profile;
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Home(profile: profile,)),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 212, 212, 212),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            width: 200,
                            height: 120,
                            child: GestureDetector(
                              child: Center(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          profile.accountNumber,
                                          style: const TextStyle(
                                            color: Color.fromARGB(255, 242, 242, 242),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 32),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Text(
                                            profile.name,
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ), 
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}