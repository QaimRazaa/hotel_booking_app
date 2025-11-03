import 'package:flutter/material.dart';

class AmenitiesProvider with ChangeNotifier {
  final Set<String> _selectedAmenities = {};

  Set<String> get selectedAmenities => _selectedAmenities;

  void toggle(String amenity) {
    if (_selectedAmenities.contains(amenity)) {
      _selectedAmenities.remove(amenity);
    } else {
      _selectedAmenities.add(amenity);
    }
    notifyListeners();
  }

  void clear() {
    _selectedAmenities.clear();
    notifyListeners();
  }
}
