import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Store App",
      home: Store_Page(),
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Store_Page extends StatelessWidget {
  const Store_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // 메뉴바
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Woman',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Kids',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Shoes',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Bag',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // 그림
            Expanded(
                child: Image.asset('assets/bag.jpeg', fit: BoxFit.cover,)
            ),
            SizedBox(height: 2,),
            Expanded(
              child: Image.asset('assets/cloth.jpeg', fit: BoxFit.cover),
            ),
          ],
        ),
      ),

      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Image(image: AssetImage('assets/cloth.jpeg')),
      //       Image(image: AssetImage('assets/bag.jpeg')),
      //     ],
      //   ),
      // ),
    );
  }
}
