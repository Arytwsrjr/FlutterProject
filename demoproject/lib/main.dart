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
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text ('Flutter Demo',
          style :TextStyle(color: Colors.yellow),
          ),
          leading: const Icon(Icons.add),
          backgroundColor: const Color.fromARGB(255, 235, 148, 121),
          ),
        
        body:Container(
          color: const Color.fromARGB(255, 226, 168, 141),
          padding: const EdgeInsets.all(20),//padding ใช้ EdgeInsets
          margin: const EdgeInsets.all(20),
          child:const Text('hello'),
        ),
        
        floatingActionButton: FloatingActionButton(onPressed: (){
          print("Hello");
        }
        ,
        
        child: const Icon(Icons.phone),
        
        ),
    ));
  }
}
