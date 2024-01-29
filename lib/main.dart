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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Tapped on Hello Button');
                },
                onLongPress: () {
                  print('You have long pressed Hello Button');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400,
                    foregroundColor: Colors.black54,
                    // maximumSize: Size(300, 80),
                    // minimumSize: Size(250, 40),
                    // padding: EdgeInsets.all(16),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                    // padding: EdgeInsets.only(left: 12, top: 24, right: 36, bottom: 48),
                    elevation: 4,
                    shadowColor: Colors.teal,
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white, // color won't work for "foregroundColor" as its set to black.
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                child: Text('Hello'),
              ),

            ],
          ),
        ));
  }
}
