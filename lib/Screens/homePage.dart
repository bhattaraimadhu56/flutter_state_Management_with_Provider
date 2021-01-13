import 'package:flutter/material.dart';
import '../models/cart.dart';
import '../models/product.dart';
import 'cartDetails.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Product> products = [
    Product(name: "Oil Soyabean", price: 45),
    Product(name: "Mustard Soyabean", price: 55),
    Product(name: "Cannola Soyabean", price: 60),
    Product(name: "Olive Soyabean", price: 75),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, anyNamecart, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Shopping cart'),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CartDetailsPage()));
                    },
                  ),
                  Text(anyNamecart.count.toString())
                ],
              ),
            )
          ],
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].name),
              subtitle: Text(products[index].price.toString()),
              trailing: Icon(Icons.add),
              onTap: () {
                anyNamecart.add(products[index]);
              },
            );
          },
        ),
      );
    });
  }
}
