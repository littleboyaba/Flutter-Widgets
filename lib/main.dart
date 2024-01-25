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
    return const Scaffold(
      //backgroundColor: Color(0xFF338930),
      backgroundColor: Colors.grey,
      body: Center(
        child: Text(
          "Hello Flutter, How are you doing? Hope you are doing well? Yeah! about that, things are doing upside down",
          textAlign: TextAlign.justify,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.teal,
            decoration: TextDecoration.underline,
            wordSpacing: 3,
            letterSpacing: 2,
            height:2,
          ),
          // just a comment
        ),
      ),
    );
  }
}
