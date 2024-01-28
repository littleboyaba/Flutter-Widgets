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
        leading: const Icon(
          Icons.home,
          color: Colors.white,
          size: 28,
        ),
      ),
      //backgroundColor: Color(0xFF338930),
      backgroundColor: Colors.white70,
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text("Mango"),
            const Text("Orange"),
            const Text('CocoNut'),
            const Text("Pina apple"),
            Container(
              color: Colors.green,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("2nd Row: "),
                  Text("Rose "),
                  Text("Lilac "),
                  Text("Red Flower"),
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('Honda'),
                  const Text('Mazda'),
                  const Text('Toyota'),
                  Image.asset('assets/images/tree_path.jpg', height: 100, width: 100,),
                ],
              ),
            ),
            Container(
              color: Colors.teal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/flower.jpg', height: 100, width: 100,),
                  const Text('3rd Row with a flower')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
