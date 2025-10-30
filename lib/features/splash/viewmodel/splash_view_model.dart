import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/signup.dart';

class SplashScreenViewModel {
  final int splashDurationInSeconds;

  SplashScreenViewModel({this.splashDurationInSeconds = 3});

  void startSplashScreenTimer(BuildContext context, Widget nextScreen) {
    Timer(Duration(seconds: splashDurationInSeconds), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignupScreen()),
      );
    });
  }
}
