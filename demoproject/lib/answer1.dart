import 'package:flutter/material.dart';

class Answer1 extends StatelessWidget {
  const Answer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Layout"),
        backgroundColor: Colors.orange
    ),
    body :
    Column(children: [Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
          margin: EdgeInsets.all(20),
        ),const SizedBox(width: 20),
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
          margin: EdgeInsets.all(20),
        ),const SizedBox(width: 20),
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
          margin: EdgeInsets.all(20),
        ),const SizedBox(width: 20),
      ],
    ),
    Column(children: [Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.orange,
          width: 100,
          height: 100,
          margin: EdgeInsets.all(20),
        ),
        const SizedBox(width: 20),
        Container(
          color: Colors.purple,
          width: 100,
          height: 100,
          margin: EdgeInsets.all(20),
        ),const SizedBox(width: 20),
        Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
          margin: EdgeInsets.all(20),
        ),const SizedBox(width: 20),
      ],
    )
      
    ],)
    ],
    ),
    
      

    )
    ;
  }
}