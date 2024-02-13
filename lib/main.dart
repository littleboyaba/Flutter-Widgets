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
        title: const Text('AppBar Title'),
        backgroundColor: Colors.blue,
        elevation: 3,
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          size: 28,
        ),
      ),
      //backgroundColor: Color(0xFF338930),
      backgroundColor: Colors.white70,
      body: const Center(
        child: Text(
          "Its All About AppBar",
        ),
      ),
    );
  }
}
