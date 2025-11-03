import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/signup.dart';

class SplashScreenViewModel {
  void startSplashScreenTimer(BuildContext context, String routeName) {
    Future.delayed(const Duration(seconds: 3), () {
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, routeName);
      }
    });
  }
}
