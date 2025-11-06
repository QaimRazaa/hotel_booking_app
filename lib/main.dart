import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:hotel_booking_app/features/personalisation/viewmodel/bookinghistory/swipe_provider.dart';
import 'package:provider/provider.dart';
import 'package:hotel_booking_app/features/hotel/viewmodel/findroom/dropdown_provider.dart';
import 'package:hotel_booking_app/features/hotel/viewmodel/findroom/room_tab_provider.dart';
import 'package:hotel_booking_app/features/hotel/viewmodel/foodmenu/food_item_provider.dart';
import 'package:hotel_booking_app/features/hotel/viewmodel/navigation/navigation_provider.dart';
import 'package:hotel_booking_app/features/hotel/viewmodel/order_successful_provider.dart';
import 'features/hotel/viewmodel/amenity_provider.dart';
import 'features/hotel/viewmodel/booknow/tab_provider.dart';
import 'app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AmenitiesProvider()),
          ChangeNotifierProvider(create: (_) => TabProvider()),
          ChangeNotifierProvider(create: (_) => RoomsProvider()),
          ChangeNotifierProvider(create: (_) => DropdownProvider()),
          ChangeNotifierProvider(create: (_) => OrderSuccessfulProvider()),
          ChangeNotifierProvider(create: (_) => FoodItemProvider()),
          ChangeNotifierProvider(create: (_) => NavigationProvider()),
          ChangeNotifierProvider(create: (_) => SwipeProvider()),
        ],
        child: const MyApp(),
      ),
    ),
  );
}
