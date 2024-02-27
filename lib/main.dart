// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Widget",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});
  // TextEditingController use to control textField
  final TextEditingController _nameTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        backgroundColor: Colors.blue,
        elevation: 3,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          size: 28,
        ),
      ),
      //backgroundColor: Color(0xFF338930),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              /*
              once you use decoration, you can't yes colors in container. you have to put it inside decoration.
               */
              // color: Colors.teal.shade200,
              width: 500,
              height: 200,
              // margin: EdgeInsets.all(20),
              // margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              margin: EdgeInsets.only(left: 20, right: 10, top: 5, bottom: 20),
              padding: EdgeInsets.all(25),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.teal.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(32),
                ),

                border: Border.all(
                  color: Colors.purple,
                  width: 4,
                  style: BorderStyle.solid,
                ),

                /*
                if you want to use shape then you can't use borderRadius,
                so keep that in kind.
                 */
                // shape: BoxShape.circle,

                boxShadow: const [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 7, // 7 or 8 is standard value
                    offset: Offset(4, 3), // shadow position x and y axis.
                  ),
                ],
              ),

              child: Icon(Icons.android),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: TextField(
                controller: _nameTEController,
                decoration: InputDecoration(
                  label: Text('Name'),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
