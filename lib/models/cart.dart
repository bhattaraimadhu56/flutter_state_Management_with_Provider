import 'package:stateManagementWithProvider/models/product.dart';

class Cart {
  List<Product> products = [];
  double totalPrice;
  // constructor
  Cart({this.products, this.totalPrice});

  // add product function
  void add(Product p) {
    // add new product (p) to list of products
    products.add(p);
//added in price
    // totalPrice = totalPrice + p.price;
    totalPrice += p.price;
  }

  // remove product function
  void remove(Product p) {
    // remove new product (p) to list of products
    products.remove(p);
//Removed in price
    totalPrice = totalPrice - p.price;
    //  totalPrice -= p.price;
  }

  // get total price getter
  // differene between getter , setter and function is that function have () but not by getter setter befor {}

  double get total {
    return totalPrice;
  }

// total count getter
  int get count {
    return products.length;
  }

  //All items on the cart or basket
  List<Product> get cartList {
    return products;
  }
}
