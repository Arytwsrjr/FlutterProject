
import 'package:demoproject/AQIpage.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // ปิด debug banner
      theme : ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),
      home :AQIpage(),
  );
  }
}
class GreetingWidget extends StatelessWidget{
  final String name;
  const GreetingWidget({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo App"),
        backgroundColor: const Color.fromARGB(255, 225, 180, 113),
      ),
      body: Center(child : Text('Hello,$name'))
    );
  }
}
