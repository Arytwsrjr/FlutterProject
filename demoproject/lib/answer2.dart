import 'package:flutter/material.dart';

class Answer2 extends StatelessWidget {
  const Answer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Social Media Post"),
        backgroundColor: Colors.orange,
      ),
    body:
    Column(
      children: [
        Row(
          children: [
            Container(
              width: 50, // กำหนดความกว้างของวงกลม
              height: 50, // กำหนดความสูงของวงกลม
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
              color: Colors.blue, // กำหนดสีของวงกลม
              shape: BoxShape.circle,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("User Name",style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                const SizedBox(height: 5),
                const Text("5 minute ago",style: TextStyle(
                fontSize: 10,
                
                ),),
              ],
            ),
            
          ],
        ),
        Column(

          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
            )
          ],
        ),
        Column(
          //mainAxisAlignment : MainAxisAlignment.center,
          
          children: [
            Row(
              mainAxisAlignment : MainAxisAlignment.spaceEvenly,
              
              children: [
                ElevatedButton(onPressed: (){},
                child: const Text("Like")
          ),
          const SizedBox(width: 20),
          
                ElevatedButton(onPressed: (){},
                child: const Text("Comment")
          ),
                const SizedBox(width: 20),

                ElevatedButton(onPressed: (){},
                child: const Text("share")
                )
              ]
          ),
          
            
          ]
            )
          ],
        )
        
      
      
    )
    
    ;
  }
}