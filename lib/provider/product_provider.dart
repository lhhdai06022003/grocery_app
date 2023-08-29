

import 'package:flutter/cupertino.dart';
import 'package:grocery_app/model/products_model.dart';

class ProductProvider with ChangeNotifier {
  // danh sach product
  final List<Product> _product = listProduct;
  List<Product> get product  => _product;

//favorite
  final List<Product> _myProduct = [];
  List<Product> get myProduct  => _myProduct;
  void addToList(Product product){
    _myProduct.add(product);
    notifyListeners();
  }
  void removeFromList(Product product){
    _myProduct.remove(product);
    notifyListeners();
  }

  // cart
  final List<Product> _myCart = [];
  List<Product> get myCart  => _myCart;
  void addToCart(Product product){
    _myCart.add(product);
    notifyListeners();
  }
  void removeFromCart(Product product){
    _myCart.remove(product);
    notifyListeners();
  }
}