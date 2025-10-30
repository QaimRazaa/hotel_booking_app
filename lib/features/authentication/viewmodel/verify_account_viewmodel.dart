import 'dart:async';
import 'package:flutter/material.dart';

class VerifyAccountViewModel {
  final int delayInSeconds;

  VerifyAccountViewModel({this.delayInSeconds = 3});

  void startVerificationTimer(BuildContext context, Widget nextScreen) {
    Timer(Duration(seconds: delayInSeconds), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => nextScreen),
      );
    });
  }
}
