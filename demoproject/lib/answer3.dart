import 'package:flutter/material.dart';

class Answer3 extends StatelessWidget {
  const Answer3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Layout"),
        backgroundColor: Colors.orange,
      ),
    
    body:
      Column(
        children: [
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.grey,
              child: const Text("Category:Anime"),
              padding: EdgeInsets.all(20),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.network("https://imgs3.goodsmileus.com/image/cache/data/productimages/Nendoroids/Diablo/05-1200x1200.jpg",width: 150,height: 150,),
                    //SizedBox(height: 20,),
                    Text("rimuru",),
                    Column(
                      children: [
                        Row(children: [
                          Text("500 bath",style: TextStyle(color: Colors.green)),
                        ],),
                      ],
                    )
                  ],
                  
                ),
                Column(
                  children: [
                    Image.network("https://tbasejpn.com/cdn/shop/files/imgrc0087743673_800x.jpg?v=1713420521",width: 160,height: 160,),
                    Text("Gojo Satoru"),
                    Column(
                      children: [
                        Row(children: [
                          Text("500 bath",style: TextStyle(color: Colors.green),),
                        ],),
                      ],
                    )
                  ],
                )
              ],
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.network("https://img.lazcdn.com/g/p/80e5754d8f9e758ec0675e718b36629b.jpg_360x360q75.jpg_.webp",width: 150,height: 150,),
                    //SizedBox(height: 20,),
                    Text("Naruto",),
                    Column(
                      children: [
                        Row(children: [
                          Text("600 bath",style: TextStyle(color: Colors.green)),
                        ],),
                      ],
                    )
                  ],
                  
                ),
                Column(
                  children: [
                    Image.network("https://down-th.img.susercontent.com/file/6463de95699d3f21ae33bbc503447cfd",width: 160,height: 160,),
                    Text("Gojo Satoru"),
                    Column(
                      children: [
                        Row(children: [
                          Text("550 bath",style: TextStyle(color: Colors.green),),
                        ],),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
      )
    );
  }
}