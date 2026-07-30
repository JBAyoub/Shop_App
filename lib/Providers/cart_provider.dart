import 'package:flutter/widgets.dart';

class CartProvider extends ChangeNotifier {
  List<Map<String, dynamic>> cartItems = [];

  void addProduct(Map<String, dynamic> product) {
    cartItems.add(product);
    notifyListeners();
  }

  void deleteProduct(Map<String, dynamic> product) {
    cartItems.remove(product);
    notifyListeners();
  }
}
