import 'package:flutter/material.dart';

class SwipeProvider extends ChangeNotifier {
  final List<String> _deletedItems = [];

  List<String> get deletedItems => _deletedItems;

  bool isDeleted(String key) {
    return _deletedItems.contains(key);
  }

  void deleteItem(String key) {
    if (!_deletedItems.contains(key)) {
      _deletedItems.add(key);
      notifyListeners();
    }
  }

  void restoreItem(String key) {
    _deletedItems.remove(key);
    notifyListeners();
  }

  void clearDeleted() {
    _deletedItems.clear();
    notifyListeners();
  }
}