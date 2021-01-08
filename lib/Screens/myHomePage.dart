import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateManagementWithProvider/Screens/cartDetails.dart';
import 'package:stateManagementWithProvider/models/cart.dart';
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
    return Consumer<Cart>(builder: (context, cart, child) {
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
                  // Text(cart.count.toString()), // as text takes string
                  Text('5'),
                  // above method shows error so use ??'0' ==>otherwise show 0
                  // Text(cart.products.length.toString() ?? '0')
                ],
              )
            ],
          ),
          body: ListView.builder(
              // give length to count
              itemCount: products.length,
              // give products details base on index
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(products[index].name),
                  // as price is double to change it to string
                  subtitle: Text(products[index].price.toString()),
                  // to give icon at right side, for left side we use leading
                  trailing: Icon(Icons.add),
                  // while clicking add the number of products in basket
                  onTap: () {
                    // code to increase the number in basket
                    cart.add(products[index]);
                    print("madhu");
                    print(cart);
                  },
                );
              }));
    });
  }
}
