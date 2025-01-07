import 'package:flutter/material.dart';

class Answer4 extends StatelessWidget {
  const Answer4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "username",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.email),
              Text("  Thawornsirijara_a@silpakorn.edu"),
              Container(padding: EdgeInsets.all(20)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.phone),
              Text(" 0823511983"),
              Container(padding: EdgeInsets.all(20)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on),
              Text(" 996 Suksawad 26"),
              Container(padding: EdgeInsets.all(20)),
            ],
          ),
          Spacer(), // ใช้ Spacer เพื่อผลักปุ่มไปด้านล่างสุด
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text("End profile"),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Logout"),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
