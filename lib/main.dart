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
            TextButton(
              onPressed: () {
                print('Pressed on Text Button');
              },
              style: TextButton.styleFrom(
                  backgroundColor: Colors.teal.shade300,
                  foregroundColor: Colors.white,
                  // maximumSize: Size(300, 50),
                  // minimumSize: Size(250, 40),
                  padding: EdgeInsets.all(20),
                  // padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  // padding: EdgeInsets.only(left: 12, top: 20, right: 12, bottom: 20),
                  elevation: 3,
                  shadowColor: Colors.blueGrey,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors
                        .red, // text color wont work here as foregroundColor set on above.
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: Text("Text Button"),
            ),
            SizedBox(height: 20,),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              style: IconButton.styleFrom(
                  backgroundColor: Colors.green.shade200,
                  foregroundColor: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  )),
            ),
            SizedBox(height: 20,),
            FloatingActionButton(
              onPressed: () {},
              child: Text("FAB Button"),
            ),
            SizedBox(height: 20,),
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text("FAB Button"),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
