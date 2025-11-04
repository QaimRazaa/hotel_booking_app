import 'package:flutter/material.dart';

class AppColors{
  AppColors._();

  static const Color primary = Color(0xff0090FF);
  static Color secondary = Color(0xFFFFE24B);
  static Color accent = Color(0xFFb0c7ff);
  static Color red = Color(0xFFD14426);
  static Color darkRed = Color(0xFFFF4900);
  static Color blue = Color(0xff266AD1);
  static Color green = Color(0xff00BD6B);
  static const Color dashboardAppbarBackground = Color(0xFF4b68ff);

  static Color textPrimary = Color(0xFF333333);
  static Color textSecondary = Color(0xFF6c757D);
  static const Color textWhite = Colors.white;

  static const Color light = Color(0xFFf6f6f6);
  static Color dark = Color(0xFF272727);
  static Color primaryBackground = Color(0xFFf3f5ff);

  static Color lightContainer = Color(0xFFf6f6f6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

  static Color buttonPrimary = Color(0xFF4b68ff);
  static Color buttonSecondary = Color(0xFF6c757D);
  static Color buttonDisabled = Color(0xFFc4c4c4);

  static const Color borderPrimary = Color(0xFFd9d9d9);
  static Color borderSecondary = Color(0xFFe6e6e6);

  static Color error = Color(0xFFd32f2f);
  static Color success = Color(0xFF388e3c);
  static Color warning = Color(0xFFf57c00);
  static Color info = Color(0xFF1976d2);

  static const Color black = Colors.black;
  static Color darkerGrey = Color(0xFF4f4f4f);
  static Color darkGrey = Color(0xFF939393);
  static Color grey = Color(0xff8E929B);
  static Color softGrey = Color(0xFFf4f4f4);
  static const Color lightGrey = Color(0xff7F868A);
  static const Color white = Color(0xFFffffff);
  static const Color lightWhite = Color(0xffE0E8ED);


  static const Color dividerColor = Color(0xffEBF1F5);

  static const Gradient linerGradient =LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xff00FF94),
      Color(0xff0000FE),
    ],
  );
  static const Gradient linerGradient2 =LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff0090FF),
      Color(0xff00FF94),
    ],
  );
  static  Gradient linerGradient3 =LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xff0090FF).withOpacity(0.7),
      Color(0xff00FF94).withOpacity(0.7),
    ],
  );

  static  Gradient linerGradientBlur =LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.transparent,
      Colors.transparent,
      Colors.white.withOpacity(0.2),
      Colors.white.withOpacity(0.2),
      Colors.white,
    ],
    stops: const [0.0, 0.6, 0.8, 0.9, 1.0],
  );

}