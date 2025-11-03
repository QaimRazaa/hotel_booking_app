import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/hotel/viewmodel/findroom/room_tab_provider.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'features/hotel/viewmodel/amenity_provider.dart';
import 'features/hotel/viewmodel/booknow/tab_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AmenitiesProvider()),
        ChangeNotifierProvider(create: (_) => TabProvider()),
        ChangeNotifierProvider(create: (_) => RoomsProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
