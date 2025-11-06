import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hotel_booking_app/utils/helper/system_ui_helper.dart';
import 'package:hotel_booking_app/utils/theme/app_theme.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';
import 'package:hotel_booking_app/features/hotel/viewmodel/navigation/navigation_provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    SystemUIHelper.setFullScreenMode();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<NavigationProvider>().resetToDefault();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking App',
      debugShowCheckedModeBanner: false,

      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: (context, child) {
        AppSizes.init(context);
        return DevicePreview.appBuilder(context, child);
      },

      themeMode: ThemeMode.light,
      theme: CustomAppTheme.lightTheme,
      initialRoute: AppRoutes.splashSplashScreen,
      onGenerateRoute: generateRoute,
    );
  }
}
