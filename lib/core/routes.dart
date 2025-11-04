import 'package:flutter/material.dart';
// 👈 Add this
import 'package:hotel_booking_app/features/authentication/view/forgot_password/forgot_password.dart';
import 'package:hotel_booking_app/features/authentication/view/signin/sign_in.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/signup.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/verify_account.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/book_now.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/findhotel.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/hotellocation/hotel_location.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/orderconfirm/order_confirm.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/orderconfirm/order_succesful.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/orderconfirm/redeem_voucher.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/paymentmethod/payment_method.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/rooms.dart';
import '../features/splash/view/splash_screen.dart';

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
  static const String orderConfirmScreen = 'OrderConfirmScreen';
  static const String paymentMethodScreen = 'PaymentMethodScreen';
  static const String orderSuccessfulScreen = 'OrderSuccessfulScreen';
  static const String redeemVoucherScreen = 'redeemVoucherScreen';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashSplashScreen:
      return _buildAnimatedRoute(const SplashScreen());

    case AppRoutes.signUpScreen:
      return _buildAnimatedRoute(const SignupScreen());

    case AppRoutes.verifyAccountScreen:
      return _buildAnimatedRoute(const VerifyAccountScreen());

    case AppRoutes.signInScreen:
      return _buildAnimatedRoute(const SignInScreen());

    case AppRoutes.forgotPasswordScreen:
      return _buildAnimatedRoute(const ForgotPasswordScreen());

    case AppRoutes.roomScreen:
      return _buildAnimatedRoute(const RoomsScreen());

    case AppRoutes.findHotelScreen:
      return _buildAnimatedRoute(const FindHotelScreen());

    case AppRoutes.hotelLocationScreen:
      return _buildAnimatedRoute(const HotelLocationScreen());

    case AppRoutes.bookNowScreen:
      return _buildAnimatedRoute(const BookNowScreen());

      case AppRoutes.orderConfirmScreen:
      return _buildAnimatedRoute(const OrderConfirm());

      case AppRoutes.paymentMethodScreen:
      return _buildAnimatedRoute(const PaymentMethod());

      case AppRoutes.orderSuccessfulScreen:
      return _buildAnimatedRoute(const OrderSuccessfulScreen());

      case AppRoutes.redeemVoucherScreen:
      return _buildAnimatedRoute(const RedeemVoucher());

    default:
      return _buildAnimatedRoute(
        const Scaffold(
          body: Center(child: Text("No route found")),
        ),
      );
  }
}

PageRouteBuilder _buildAnimatedRoute(Widget page) {
  return PageRouteBuilder(
    transitionDuration: const Duration(milliseconds: 700),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    pageBuilder: (_, animation, secondaryAnimation) => page,
    transitionsBuilder: (_, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOutCubic;

      var slideTween = Tween(begin: begin, end: end).chain(
        CurveTween(curve: curve),
      );

      var fadeTween = Tween<double>(begin: 0.0, end: 1.0);

      return SlideTransition(
        position: animation.drive(slideTween),
        child: FadeTransition(
          opacity: animation.drive(fadeTween),
          child: child,
        ),
      );
    },
  );
}

