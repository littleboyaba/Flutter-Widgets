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
  final TextEditingController nameTextFieldController = TextEditingController();

  final List<Map<String, dynamic>> myItems = [
    {"Name": "Abu Baker", "City": "Raipur", "Age": 27},
    {"Name": "John Doe", "City": "New York", "Age": 35},
    {"Name": "Alice Smith", "City": "London", "Age": 28},
    {"Name": "Ahmed Khan", "City": "Karachi", "Age": 32},
    {"Name": "Elena Rodriguez", "City": "Barcelona", "Age": 30},
    {"Name": "Mikhail Ivanov", "City": "Moscow", "Age": 29},
    {"Name": "Sophia Kim", "City": "Seoul", "Age": 31},
    {"Name": "Diego Hernandez", "City": "Mexico City", "Age": 33},
    {"Name": "Aisha Patel", "City": "Mumbai", "Age": 26},
    {"Name": "Yusuf Al-Farsi", "City": "Riyadh", "Age": 34},
    {"Name": "Alice Smith", "City": "London", "Age": 28},
    {"Name": "Ahmed Khan", "City": "Karachi", "Age": 32},
    {"Name": "Elena Rodriguez", "City": "Barcelona", "Age": 30},
    {"Name": "Mikhail Ivanov", "City": "Moscow", "Age": 29},
    {"Name": "Sophia Kim", "City": "Seoul", "Age": 31},
    {"Name": "Diego Hernandez", "City": "Mexico City", "Age": 33},
    {"Name": "Aisha Patel", "City": "Mumbai", "Age": 26},
    {"Name": "Yusuf Al-Farsi", "City": "Riyadh", "Age": 34},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        backgroundColor: Colors.blue,
        elevation: 3,
      ),
      body: ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.star),
            title: Text("Name: ${myItems[index]['Name']}"),
            subtitle: Text("City: ${myItems[index]['City']},"),
            onTap: (){_showAgeSnackBar(context, myItems[index]['Age']);
            },

          );
        },
      ),
      /* ListView(
        children: [
          ListTile(leading: Icon(Icons.star), title: Text("Item 01"), subtitle: Text("Item Description"), onTap: (){mySnackBar(context, 'Item 01');},),
          ListTile(leading: Icon(Icons.star), title: Text("Item 02"), subtitle: Text("Item Description"), onTap: (){mySnackBar(context, 'Item 02');},),
          ListTile(leading: Icon(Icons.star), title: Text("Item 03"), subtitle: Text("Item Description"), onTap: (){mySnackBar(context, 'Item 03');},),
          ListTile(leading: Icon(Icons.star), title: Text("Item 04"), subtitle: Text("Item Description"), onTap: (){mySnackBar(context, 'Item 04');},),
        ],
      ),
    */
    );
  }
}

void _showAgeSnackBar(BuildContext context, int age) {
  final snackBar = SnackBar(
    content: Text('The age is: $age'),
    duration: Duration(seconds: 2), // You can adjust the duration as needed
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

