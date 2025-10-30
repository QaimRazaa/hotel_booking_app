import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceUtils {
  static double width(BuildContext context) => MediaQuery.of(context).size.width;
  static double height(BuildContext context) => MediaQuery.of(context).size.height;

  static double statusBar(BuildContext context) => MediaQuery.of(context).padding.top;
  static double bottomNav(BuildContext context) => MediaQuery.of(context).padding.bottom;
  static double appBarHeight = kToolbarHeight;

  static double appBarWeight (){
    return kToolbarHeight;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double keyboardHeight(BuildContext context) => MediaQuery.of(context).viewInsets.bottom;
  static bool isKeyboardVisible(BuildContext context) => MediaQuery.of(context).viewInsets.bottom > 0;

  static void hideKeyboard(BuildContext context) => FocusScope.of(context).unfocus();

  static bool isPortrait(BuildContext context) => MediaQuery.of(context).orientation == Orientation.portrait;
  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.shortestSide >= 600;

  static Future<void> vibrate() async => HapticFeedback.vibrate();

  static bool isPhysicalDevice() => Platform.isAndroid || Platform.isIOS;

}