// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Widget",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

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
        child: RichText(
          text: TextSpan(
            text: 'Flutter ',
            style: TextStyle(color: Colors.purple, fontSize: 24),
            children: const [
              TextSpan(
                text: 'Rich ',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Text',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  decoration: TextDecoration.lineThrough,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
