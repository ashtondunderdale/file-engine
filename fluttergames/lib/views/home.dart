import 'package:flutter/material.dart';
import 'package:fluttergames/views/tictactoe/grid.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.sizeOf(context).width / 2,
          height: MediaQuery.sizeOf(context).height / 1.2,
          color: const Color.fromARGB(255, 234, 234, 234),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: GestureDetector(
                  onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Grid()),
                    );
                  },
                  child: Container(
                    width: 300,
                    height: 120,
                    color: const Color.fromARGB(255, 185, 185, 185),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 4, top: 4),
                      child: Text(
                        "Tic-Tac-Toe",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}