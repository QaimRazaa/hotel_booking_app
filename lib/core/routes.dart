import 'package:flutter/material.dart';
// 👈 Add this
import 'package:hotel_booking_app/features/authentication/view/forgot_password/forgot_password.dart';
import 'package:hotel_booking_app/features/authentication/view/signin/sign_in.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/signup.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/verify_account.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/book_now.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/foodmenu/food_detail.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/foodmenu/food_menu.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/findhotel.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/hotellocation/hotel_location.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/orderconfirm/order_confirm.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/orderconfirm/order_succesful.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/orderconfirm/redeem_voucher.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/paymentmethod/payment_method.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/rooms.dart';
import 'package:hotel_booking_app/features/personalisation/view/changepassword/change_password.dart';
import 'package:hotel_booking_app/features/personalisation/view/myprofile/add_a_card.dart';
import 'package:hotel_booking_app/features/personalisation/view/myprofile/edit_profile.dart';
import 'package:hotel_booking_app/features/personalisation/view/myprofile/profile.dart';
import 'package:hotel_booking_app/features/personalisation/view/settings/furthersettings/faq.dart';
import 'package:hotel_booking_app/features/personalisation/view/settings/furthersettings/notifications.dart';
import 'package:hotel_booking_app/features/personalisation/view/settings/furthersettings/privacy_policy.dart';
import 'package:hotel_booking_app/features/personalisation/view/settings/furthersettings/terms_conditions.dart';
import 'package:hotel_booking_app/features/personalisation/view/settings/settings.dart';
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
  static const String myProfileScreen = 'MyProfileScreen';
  static const String addACardScreen = 'AddACardScreen';
  static const String editProfileScreen = 'EditProfileScreen';
  static const String changePasswordScreen = 'ChangePasswordScreen';
  static const String settingsScreen = 'SettingsScreen';
  static const String privacyPolicy = 'PrivacyPolicy';
  static const String termsConditions = 'TermsConditions';
  static const String faq = 'Faq';
  static const String foodMenu = 'FoodMenu';
  static const String foodDetail = 'FoodDetail';
  static const String notifications = 'Notifications';
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

      case AppRoutes.myProfileScreen:
      return _buildAnimatedRoute(const MyProfileScreen());

      case AppRoutes.addACardScreen:
      return _buildAnimatedRoute(const AddACardScreen());

      case AppRoutes.editProfileScreen:
      return _buildAnimatedRoute(const EditProfile());

      case AppRoutes.changePasswordScreen:
      return _buildAnimatedRoute(const ChangePassword());

      case AppRoutes.settingsScreen:
      return _buildAnimatedRoute(const Settings());

      case AppRoutes.privacyPolicy:
      return _buildAnimatedRoute(const PrivacyPolicy());

      case AppRoutes.termsConditions:
      return _buildAnimatedRoute(const TermsConditions());

      case AppRoutes.faq:
      return _buildAnimatedRoute(const Faq());

      case AppRoutes.notifications:
      return _buildAnimatedRoute(const Notifications());

      case AppRoutes.foodMenu:
      return _buildAnimatedRoute(const FoodMenu());

      case AppRoutes.foodDetail:
      return _buildAnimatedRoute(const FoodDetail());

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
    transitionDuration: const Duration(milliseconds: 600),
    reverseTransitionDuration: const Duration(milliseconds: 400),
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

