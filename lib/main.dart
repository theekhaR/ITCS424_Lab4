import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lost&Found',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(title: "Product Line"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Our Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
              key: ValueKey(1),
              name: "The Game Changing Attorney",
              description: "Is a .......................",
              price: 657,
              image: "assets/1.jpg",
              isNetworkImage: false),
          ProductBox(
              key: ValueKey(2),
              name: "Buy Back Your Time: Get Unstuck",
              description: "Is a .......................",
              price: 278,
              image:
                  "https://m.media-amazon.com/images/I/71R7qk8TXsL._SL1500_.jpg",
              isNetworkImage: true),
          ProductBox(
              key: ValueKey(3),
              name: "How Highly Effective People Speak",
              description: "Is a book about How Highly Effective People Speak",
              price: 235,
              image: "assets/3.jpg",
              isNetworkImage: false),
          ProductBox(
              key: ValueKey(4),
              name: "The Silent Patient",
              description: "Is a .......",
              price: 153,
              image:
                  "https://m.media-amazon.com/images/I/91BbLCJOruL._SL1500_.jpg",
              isNetworkImage: true),
          ProductBox(
              key: ValueKey(5),
              name: "The Saints of Swallow Hill:",
              description: "Is a .................................",
              price: 289,
              image: "assets/5.jpg",
              isNetworkImage: false),
          ProductBox(
              key: ValueKey(6),
              name: "The Spanish Daughter",
              description: "Is a ..........",
              price: 359,
              image:
                  "https://m.media-amazon.com/images/I/81Sz9ssnZZL._SL1500_.jpg",
              isNetworkImage: true),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.isNetworkImage,
  }) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
  final bool isNetworkImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            isNetworkImage
                ? Image.network(image, width: 80, height: 80)
                : Image.asset(image, width: 80, height: 80),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("Price: " + this.price.toString()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
