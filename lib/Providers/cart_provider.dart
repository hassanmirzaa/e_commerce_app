import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<Map<String, dynamic>> cartList = [];

  void subtractItem(int index) {
    cartList[index]['cart']--;
    if (cartList[index]['cart'] == 0) {
      cartList.removeAt(index);
    }
    notifyListeners(); // Notify listeners of changes
  }

  void addItem(int index) {
    cartList[index]['cart']++;
    notifyListeners(); // Notify listeners of changes
  }

  void deleteItem(int index) {
    cartList.removeAt(index); // Correctly remove the item at the given index
    notifyListeners(); // Notify listeners of changes
  }

  void clearCart() {
    cartList.clear();
    notifyListeners(); // Notify listeners of changes
  }

  double calculateTotalPrice() {
    double total = 0.0;
    for (var item in cartList) {
      total += item['price'] * item['cart'];
    }
    return total;
  }

  void addItemToCart(Map<String, dynamic> newItem) {
    int index = cartList.indexWhere((item) => item['id'] == newItem['id']);
    if (index != -1) {
      // If item already exists in the cart, update its quantity
      cartList[index]['cart'] += newItem['cart'];
    } else {
      // If item does not exist, add it to the cart
      cartList.add(newItem);
    }
    notifyListeners(); // Notify listeners of changes
  }
}
