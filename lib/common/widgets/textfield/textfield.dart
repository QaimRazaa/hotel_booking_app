import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final IconData? postfixIcon; // 👈 added
  final VoidCallback? onPostfixTap; // 👈 added
  final bool obscureText;
  final bool underLine;
  final TextEditingController? controller;
  final int? maxLength;
  final TextAlign textAlign;
  final TextInputType? keyboardType;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final Color hintTextColor;
  final Color? underlineColor;
  final Color? focusedUnderlineColor;
  final Color? postfixIconColor; // 👈 added

  const CustomTextField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.postfixIcon, // 👈 added
    this.onPostfixTap, // 👈 added
    this.obscureText = false,
    this.underLine = true,
    this.controller,
    this.maxLength,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.textColor = Colors.black,
    this.hintTextColor = Colors.grey,
    this.underlineColor,
    this.focusedUnderlineColor,
    this.postfixIconColor, // 👈 added
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: underLine && maxLength == 1 ? 60 : double.infinity,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        textAlign: textAlign,
        keyboardType: keyboardType,
        maxLength: maxLength,
        style: GoogleFonts.roboto(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: textColor,
        ),
        decoration: InputDecoration(
          counterText: '',
          prefixIcon: prefixIcon != null
              ? Icon(prefixIcon, color: AppColors.primary)
              : null,
          suffixIcon: postfixIcon != null
              ? GestureDetector(
            onTap: onPostfixTap,
            child: Icon(
              postfixIcon,
              color: postfixIconColor ?? AppColors.primary,
            ),
          )
              : null,
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: hintTextColor,
          ),
          border: underLine
              ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: underlineColor ?? const Color(0xFFC4C4C4),
              width: 1,
            ),
          )
              : InputBorder.none,
          enabledBorder: underLine
              ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: underlineColor ?? const Color(0xFFC4C4C4),
              width: 1,
            ),
          )
              : InputBorder.none,
          focusedBorder: underLine
              ? UnderlineInputBorder(
            borderSide: BorderSide(
              color: focusedUnderlineColor ?? AppColors.black,
              width: 1,
            ),
          )
              : InputBorder.none,
        ),
      ),
    );
  }
}
