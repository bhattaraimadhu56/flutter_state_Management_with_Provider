import 'package:flutter/material.dart';
import 'package:stateManagementWithProvider/Screens/cartDetails.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
