import 'package:flutter/material.dart';
import './models/cart.dart';
import './screens/homePage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      // Using NotifierProvider
      ChangeNotifierProvider(
    create: (context) => Cart(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
