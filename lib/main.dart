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
            TextField(
              controller: nameTextFieldController,
              onTap: () {
                print('TEXT FIELD TAPPED');
              },
              // you can set TextInputType in keyboardType.
              keyboardType: TextInputType.text,
              // onChanged used to validate text input. you can see the out put in console.
              onChanged: (String input) {
                print(input);
              },
              // textInputAction change keyboard Action Button.
              textInputAction: TextInputAction.done,

              // TextEditingController use case example.
              onSubmitted: (String value){
                print(nameTextFieldController.text);
                nameTextFieldController.clear();
              },

              // use to hind text when user input it. like for password or other uses.
              // obscureText: ture,
              obscureText: false,

              // Decoration
              decoration: InputDecoration(
                enabled:
                    true, // use this to enable or disable your text field. it can be use in directly in TextField too.
                label: Text("Name"),
                hintText: 'Enter your name',

                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.green, width: 5, style: BorderStyle.solid),
                ),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.purple, width: 5, style: BorderStyle.solid),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.teal, width: 5, style: BorderStyle.solid),
                ),

                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.red, width: 5, style: BorderStyle.solid),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
