import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/helper/system_ui_helper.dart';
import 'package:hotel_booking_app/utils/theme/app_theme.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemUIHelper.setFullScreenMode();

    return MaterialApp(
      title: 'Hotel Booking App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: CustomAppTheme.lightTheme,
      initialRoute: AppRoutes.splashSplashScreen,
      onGenerateRoute: generateRoute,
      builder: (context, child) {
        AppSizes.init(context);
        return child ?? const SizedBox.shrink();
      },
    );
  }
}
