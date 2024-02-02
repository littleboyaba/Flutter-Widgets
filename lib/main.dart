import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GridView",
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
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
    {"Name": "Emma Johnson", "City": "Toronto", "Age": 25},
    {"Name": "Hiroshi Tanaka", "City": "Tokyo", "Age": 36},
    {"Name": "Isabella Martinez", "City": "Mexico City", "Age": 29},
    {"Name": "Muhammad Rahman", "City": "Dhaka", "Age": 31},
    {"Name": "Olivia Williams", "City": "Sydney", "Age": 27},
    {"Name": "Mateo Silva", "City": "Buenos Aires", "Age": 30},
    {"Name": "Lily Chen", "City": "Shanghai", "Age": 28},
    {"Name": "Ravi Patel", "City": "Ahmedabad", "Age": 32},
    {"Name": "Zara Ali", "City": "Dubai", "Age": 33},
    {"Name": "Maxim Ivanov", "City": "St. Petersburg", "Age": 34},
  ];

  HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('GridView'),
      ),
      body: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 3),
        itemCount: myItems.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              _mySnackBar(context, myItems[index]['Age']);
            },
            child: ListTile(
              leading: const Icon(Icons.account_circle_outlined),
              title: Text(myItems[index]['Name']),
              subtitle: Text(myItems[index]['City']),
            ),
          );
        },
      ),
    );
  }
}

void _mySnackBar(BuildContext context, msg){
  final snackBar = SnackBar(content: Text('The Age is $msg'),
    duration: const Duration(seconds: 2,),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}