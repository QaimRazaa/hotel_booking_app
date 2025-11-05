import 'package:flutter/material.dart';

class FoodItemProvider extends ChangeNotifier {
  // This stores quantities: itemId -> quantity
  // Example: {'pizza_1': 3, 'burger_2': 2}
  final Map<String, int> _quantities = {};

  // Get the quantity for a specific item (default is 1)
  int getQuantity(String itemId) {
    return _quantities[itemId] ?? 1;
  }

  // Add 1 to quantity
  void incrementQuantity(String itemId) {
    int currentQuantity = getQuantity(itemId);
    _quantities[itemId] = currentQuantity + 1;
    notifyListeners(); // This tells Flutter to rebuild widgets watching this provider
  }

  // Subtract 1 from quantity (but don't go below 1)
  void decrementQuantity(String itemId) {
    int currentQuantity = getQuantity(itemId);
    if (currentQuantity > 1) {
      _quantities[itemId] = currentQuantity - 1;
      notifyListeners(); // This tells Flutter to rebuild widgets
    }
  }
}