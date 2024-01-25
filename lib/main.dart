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
      //backgroundColor: Color(0xFF338930),
      backgroundColor: Colors.grey,
      body: Center(
        child: Image.asset(
          'assets/images/tree_path.jpg',
          height: 600,
          width: 300,
          fit: BoxFit.scaleDown,
          // fit: BoxFit.fill,
          // fit: BoxFit.contain,
          // fit: BoxFit.cover,
          // fit: BoxFit.fitHeight,
          // fit: BoxFit.fitWidth,
          repeat: ImageRepeat.repeat,
          //repeat: ImageRepeat.repeatX, // repeat image on X axis
          //repeat: ImageRepeat.repeatY, // repeat image on Y axis
        ),
      ),
    );
  }
}
