
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/core/routes.dart';

class NavigationProvider extends ChangeNotifier {
  String _currentRoute = AppRoutes.findHotelScreen;

  String get currentRoute => _currentRoute;

  void setCurrentRoute(String route) {
    _currentRoute = route;
    notifyListeners();
  }
  void resetToDefault() {
    _currentRoute = AppRoutes.roomScreen;
    notifyListeners();
  }
}