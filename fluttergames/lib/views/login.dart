import 'package:flutter/material.dart';

import 'discover.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 231, 231, 231),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 40,
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: SizedBox(
                      width: 300,
                      height: 40,
                      child: TextField(
                        controller: passwordController,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Discover()));
              },
              icon: const Icon(
                Icons.login,
                color: Color.fromARGB(255, 90, 90, 90),
                size: 32,
              ),
            ),
          )
        ],
      ),
    );
  }
}