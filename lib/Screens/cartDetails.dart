import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardDetails extends StatefulWidget {
  @override
  _CardDetailsState createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, itemNo, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Card Details Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Card Details Page"),
            ],
          ),
        ),
      );
    });
  }
}
