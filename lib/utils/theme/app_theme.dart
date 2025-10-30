
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/theme/text_theme.dart';

class CustomAppTheme {
  CustomAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: AppTextTheme.lightTextTheme,
  );
}