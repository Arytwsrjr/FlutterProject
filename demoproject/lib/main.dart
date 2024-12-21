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
        appBar: AppBar(title: const Text ('Flutter Demo 🐈',
          style :TextStyle(color: Color.fromARGB(255, 255, 246, 83),
          fontWeight: FontWeight.bold,
          fontSize: 30),
          ),
          leading: const Icon(Icons.add,color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 242, 179, 160),
          ),
        
        body:Container(
          color: const Color.fromARGB(255, 226, 168, 141),
          padding: const EdgeInsets.all(20),//padding ใช้ EdgeInsets
          margin: const EdgeInsets.all(20),
          child:const Text('hello',style: TextStyle(
              color: Colors.white,
              fontSize: 24
            ),
          ),
          
        ),
        
        floatingActionButton: FloatingActionButton(onPressed: (){
          print("Hello");
        }
        ,
        
        child: const Icon(Icons.phone,color: Colors.white,),
        backgroundColor: const Color.fromARGB(255, 217, 127, 121),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            
            // กำหนดมุมโค้งที่ใหญ่ขึ้น
          ),
          
        ),
    ));
  }
}
