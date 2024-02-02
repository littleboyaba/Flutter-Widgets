import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 1",
      "price": 19.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 2",
      "price": 24.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 3",
      "price": 14.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 4",
      "price": 29.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 5",
      "price": 39.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 6",
      "price": 49.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 7",
      "price": 34.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 8",
      "price": 22.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 9",
      "price": 19.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 10",
      "price": 54.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 11",
      "price": 29.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 12",
      "price": 39.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 13",
      "price": 44.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 14",
      "price": 27.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 15",
      "price": 19.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 16",
      "price": 32.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 17",
      "price": 49.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 18",
      "price": 14.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 19",
      "price": 37.99
    },
    {
      "img":
          "https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "title": "Product 20",
      "price": 23.99
    },
    // ... repeat for the remaining entries
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Product'),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,),
        itemCount: myItems.length,
        itemBuilder: (BuildContext context, int index){
          return InkWell(
            onTap: (){
              _mySnackBar(context, myItems[index]['title']);
            },
            child: Card(
              color: Colors.grey,
              elevation: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(myItems[index]["img"], fit: BoxFit.cover,),
                    Padding(padding: const EdgeInsets.all(6),child: Text("${myItems[index]["title"]}"),),
                    Padding(padding: const EdgeInsets.all(6),child: Text("\$ ${myItems[index]["price"]}"),),
                  ],
                ),
            ),
          );
        },

      ),
    );
  }
}

void _mySnackBar(BuildContext context, msg){
  final snackBar = SnackBar(content: Text('The title is $msg '),
  duration: const Duration(seconds: 2),);

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
