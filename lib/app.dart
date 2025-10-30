import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/splash/view/splash_screen.dart';
import 'package:hotel_booking_app/utils/theme/app_theme.dart';

import 'core/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme:CustomAppTheme.lightTheme,
      initialRoute: AppRoutes.splashSplashScreen,
      onGenerateRoute: generateRoute,
    );
  }
}