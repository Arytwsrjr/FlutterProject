import 'package:flutter/material.dart';
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState()=> _MystatefulWidgetState();
}
  
class _MystatefulWidgetState extends State<MyStatefulWidget>{
  int counter = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:const Text("Stateful Widget",
      
      ),
      backgroundColor:const Color.fromARGB(255, 229, 216, 99),
      ),
    body:Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Counter Value : $counter",
          style: TextStyle(
          color: const Color.fromARGB(255, 113, 185, 245),
          fontWeight: FontWeight.bold,
          fontSize: 16,
          
        ),
        ),
          const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
            setState(() {
              counter--;
            });
          },
          child: const Text("-  decrease")
          //const Icon(Icons.remove)
          ),
          const SizedBox(width: 20),
          
          ElevatedButton(onPressed: (){
            setState(() {
              counter++;
            });
          },
          child: const Text("+  increase")),
          //const Icon(Icons.add)),
          const SizedBox(width: 20),
          ElevatedButton(onPressed: (){
            setState(() {
              counter = 0;
            });
          },
          child: const Text("reset")
          //const Icon(Icons.refresh)
          ),
          const SizedBox(width: 20),

          ])
        ],
      )
    ),
    );
  }
}