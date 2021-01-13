import 'package:flutter/material.dart';
import '../models/cart.dart';
import 'package:provider/provider.dart';

class CartDetailsPage extends StatefulWidget {
  @override
  _CartDetailsPageState createState() => _CartDetailsPageState();
}

class _CartDetailsPageState extends State<CartDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, anyNamecart, child) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Checkout Page [\$ ${anyNamecart.totalPrice}]'),
            ),
            body: anyNamecart.basketProducts.length == 0
                ? Text('no items in your cart')
                : ListView.builder(
                    itemCount: anyNamecart.basketProducts.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(anyNamecart.basketProducts[index].name),
                          subtitle: Text(anyNamecart.basketProducts[index].price
                              .toString()),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              anyNamecart
                                  .remove(anyNamecart.basketProducts[index]);
                            },
                          ),
                        ),
                      );
                    },
                  ));
      },
    );
  }
}
