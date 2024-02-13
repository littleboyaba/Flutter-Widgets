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

  mySnackBar(context, message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Title'),
        backgroundColor: Colors.blue,
        elevation: 3,
        titleSpacing: 10,
        toolbarHeight: 40,
        toolbarOpacity: 1,
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar(context, "I am Comment");
              },
              icon: const Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                mySnackBar(context, "I am search");
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mySnackBar(context, "I am settings");
              },
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                mySnackBar(context, "I am email");
              },
              icon: const Icon(Icons.email)),
        ],
      ),
      //backgroundColor: Color(0xFF338930),
      backgroundColor: Colors.white70,
      body: const Center(),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // to set the default active item
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar(context, "I am Home bottom navigation bar");
          }
          if (index == 1) {
            mySnackBar(context, "I am Contact bottom navigation bar");
          }
          if (index == 2) {
            mySnackBar(context, "I am Profile bottom navigation bar");
          }
        },
      ),

      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.green),
                accountName: const Text("Myrddin Wyllt"),
                accountEmail: const Text("Info@myrddinwyllt"),
                currentAccountPicture: Image.asset("assets/images/flower.jpg"),
                onDetailsPressed: (){
                  mySnackBar(context, "Profile Details");
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                mySnackBar(context, "Drawer Home");
              },
            ),
            ListTile(
              leading: const Icon(Icons.comment),
              title: const Text("Contact"),
              onTap: () {
                mySnackBar(context, "Drawer Contact");
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                mySnackBar(context, "Drawer Profile");
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              onTap: () {
                mySnackBar(context, "Drawer Email");
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text("Phone"),
              onTap: () {
                mySnackBar(context, "Drawer Phone");
              },
            ),
          ],
        ),
      ),
    );
  }
}
