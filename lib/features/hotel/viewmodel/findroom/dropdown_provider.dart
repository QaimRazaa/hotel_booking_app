import 'package:flutter/material.dart';

class DropdownProvider extends ChangeNotifier {
  Map<String, String>? _selectedLocation;

  Map<String, String>? get selectedLocation => _selectedLocation;

  void setSelectedLocation(Map<String, String>? value) {
    _selectedLocation = value;
    notifyListeners();
  }

  void clearSelectedLocation() {
    _selectedLocation = null;
    notifyListeners();
  }
}