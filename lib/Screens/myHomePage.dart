import 'package:flutter/material.dart';
import 'package:stateManagementWithProvider/Screens/cartDetails.dart';
import 'package:stateManagementWithProvider/models/product.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// Make a list of product
// Initialize a list of Product in products variable with empty array;
  // List<Product> products = [];
  // Lets inset data in list of Product
  List<Product> products = [
    Product(name: "Oil Soyabean", price: 45),
    Product(name: "Mustard Soyabean", price: 55),
    Product(name: "Cannola Soyabean", price: 60),
    Product(name: "Olive Soyabean", price: 75),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping   (State Management) "),
        actions: [
          // You can use Row, Column or Stack (Overlay Item better to use this)
          Stack(
            children: [
              IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    print("Go to another page of cart details");
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => CardDetails()));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CardDetails();
                    }));
                  }),
              Text("2"),
            ],
          )
        ],
      ),
      body: Center(
        child: Text("State Management with Flutter"),
      ),
    );
  }
}
