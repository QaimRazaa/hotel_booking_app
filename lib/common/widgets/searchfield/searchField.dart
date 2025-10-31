import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

class CustomSearchField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final double borderRadius;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final Color hintTextColor;
  final Color borderColor;
  final Color fillColor;
  final EdgeInsets contentPadding;

  const CustomSearchField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.controller,
    this.onChanged,
    this.borderRadius = 12,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w400,
    this.textColor = Colors.black,
    this.hintTextColor = const Color(0xff8E929B),
    this.borderColor = const Color(0xFFC4C4C4),
    this.fillColor = Colors.white,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      style: GoogleFonts.roboto(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor,
        contentPadding: contentPadding,
        prefixIcon: Icon(prefixIcon, color: AppColors.primary),
        hintText: hintText,
        hintStyle: GoogleFonts.roboto(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: hintTextColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: borderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: AppColors.primary, width: 1.2),
        ),
      ),
    );
  }
}
