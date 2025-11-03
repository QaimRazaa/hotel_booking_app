import 'package:flutter/material.dart';

class RoomsProvider extends ChangeNotifier {
  int selectedTab = 0;
  DateTime? selectedCheckInDate;
  DateTime? selectedCheckOutDate;

  void setTab(int index) {
    selectedTab = index;
    notifyListeners();
  }

  void setCheckInDate(DateTime? date) {
    selectedCheckInDate = date;
    notifyListeners();
  }

  void setCheckOutDate(DateTime? date) {
    selectedCheckOutDate = date;
    notifyListeners();
  }
}
