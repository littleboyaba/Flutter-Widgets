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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.deepPurple,
                  height: 250,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Elevated Button',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 26),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showAboutDialog(context: context);
                            },
                            child: const Text('Tap Me Now'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
