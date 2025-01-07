import 'package:demoproject/answer1.dart';
import 'package:demoproject/answer2.dart';
import 'package:demoproject/answer3.dart';
import 'package:demoproject/answer4.dart';
import 'package:flutter/material.dart';

class Answer5 extends StatelessWidget {
  const Answer5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Answer"),
        backgroundColor: Colors.orange,
      ),
      backgroundColor: const Color.fromARGB(255, 126, 189, 241),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Answer1()),
                );
              },
              child: Text('Answer1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Answer2()),
                );
              },
              child: Text('Answer2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Answer3()),
                );
              },
              child: Text('Answer3'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Answer4()),
                );
              },
              child: Text('Answer4'),
            ),
          ],
        ),
      ),
    );
  }
}

