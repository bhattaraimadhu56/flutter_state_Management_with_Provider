import 'package:flutter/material.dart';
import 'product.dart';

class Cart extends ChangeNotifier {
  List<Product> products = [];
  double _totalPrice = 0.0;

  void add(Product p) {
    products.add(p);
    _totalPrice += p.price;
    notifyListeners();
  }

  void remove(Product p) {
    _totalPrice -= p.price;
    products.remove(p);
    notifyListeners();
  }

  int get count {
    return products.length;
  }

  double get totalPrice {
    return _totalPrice;
  }

  List<Product> get basketProducts {
    return products;
  }
}
