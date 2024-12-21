import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CPSU Project",
              style: TextStyle(
                  color: Color.fromARGB(255, 63, 98, 189),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2)),
          backgroundColor: const Color.fromARGB(255, 140, 231, 254),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 229, 239),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  padding: const EdgeInsets.all(15),
                  color: const Color.fromARGB(255, 255, 150, 178),
                  child: const Text("Hello World1")),
              Container(
                  padding: const EdgeInsets.all(15),
                  color: const Color.fromARGB(255, 255, 150, 178),
                  child: const Text("Hello World1")),
              Container(
                  padding: const EdgeInsets.all(15),
                  color: const Color.fromARGB(255, 255, 150, 178),
                  child: const Text("Hello World1")),
            ]));
  }
}

