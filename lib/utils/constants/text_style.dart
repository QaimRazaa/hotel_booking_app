import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';

class AppTextStyles {
  // Profile Name Style
  static TextStyle profileName() {
    return GoogleFonts.roboto(
      fontSize: AppSizes.font(3.5),
      fontWeight: FontWeight.w500,
      color: AppColors.black,
    );
  }

  // Profile Info Style (email, phone)
  static TextStyle profileInfo() {
    return GoogleFonts.roboto(
      fontSize: AppSizes.font(1.8),
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
  }

  // Button Text Style
  static TextStyle buttonText() {
    return GoogleFonts.roboto(
      fontSize: AppSizes.font(1.5),
      fontWeight: FontWeight.w400,
      color: AppColors.primary,
    );
  }

  // Headline Large
  static TextStyle headlineLarge({Color? color, FontWeight? fontWeight}) {
    return GoogleFonts.roboto(
      fontSize: AppSizes.font(6),
      fontWeight: fontWeight ?? FontWeight.w700,
      color: color ?? AppColors.black,
    );
  }

  // Headline Medium
  static TextStyle headlineMedium({Color? color, FontWeight? fontWeight}) {
    return GoogleFonts.roboto(
      fontSize: AppSizes.font(4),
      fontWeight: fontWeight ?? FontWeight.w500,
      color: color ?? AppColors.black,
    );
  }

  // Body Text
  static TextStyle bodyText({Color? color, FontWeight? fontWeight}) {
    return GoogleFonts.roboto(
      fontSize: AppSizes.font(2),
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? AppColors.black,
    );
  }

  // Small Text
  static TextStyle smallText({Color? color, FontWeight? fontWeight}) {
    return GoogleFonts.roboto(
      fontSize: AppSizes.font(1.5),
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? Colors.grey,
    );
  }
}