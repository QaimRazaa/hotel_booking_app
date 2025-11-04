import 'package:flutter/material.dart';

class OrderSuccessfulProvider extends ChangeNotifier {
  bool Navigating = false;

  bool get isNavigating => Navigating;

  void initializeNavigation(BuildContext context, String routeName) {
    if (Navigating) return;

    Navigating = true;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        if (context.mounted) {
          Navigator.pushReplacementNamed(context, routeName);
        }
      });
    });
  }

  @override
  void dispose() {
    Navigating = false;
    super.dispose();
  }
}