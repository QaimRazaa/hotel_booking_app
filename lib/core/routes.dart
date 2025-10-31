import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/authentication/view/forgot_password/forgot_password.dart';
import 'package:hotel_booking_app/features/authentication/view/signin/sign_in.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/signup.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/verify_account.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/book_now.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/findhotel.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/hotellocation/hotel_location.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/rooms.dart';

import '../features/splash/view/splash_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashSplashScreen:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case AppRoutes.signUpScreen:
      return MaterialPageRoute(builder: (_) => const SignupScreen());
    case AppRoutes.verifyAccountScreen:
      return MaterialPageRoute(builder: (_) => const VerifyAccountScreen());
    case AppRoutes.signInScreen:
      return MaterialPageRoute(builder: (_) => const SignInScreen());
    case AppRoutes.forgotPasswordScreen:
      return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
    case AppRoutes.roomScreen:
      return MaterialPageRoute(builder: (_) => const RoomsScreen());
      case AppRoutes.findHotelScreen:
      return MaterialPageRoute(builder: (_) => const FindHotelScreen());
      case AppRoutes.hotelLocationScreen:
      return MaterialPageRoute(builder: (_) => const HotelLocationScreen());
      case AppRoutes.bookNowScreen:
      return MaterialPageRoute(builder: (_) => const BookNowScreen());
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(child: Text("No route found")),
        ),
      );
  }
}

class AppRoutes {
  static const String splashSplashScreen = '/';
  static const String signUpScreen = 'SignUpScreen';
  static const String verifyAccountScreen = 'VerifyAccountScreen';
  static const String signInScreen = 'SignInScreen';
  static const String forgotPasswordScreen = 'ForgotPasswordScreen';
  static const String roomScreen = 'RoomScreen';
  static const String findHotelScreen = 'FindHotelScreen';
  static const String hotelLocationScreen = 'HotelLocationScreen';
  static const String bookNowScreen = 'BookNowScreen';
}
