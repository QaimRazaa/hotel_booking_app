import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
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

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
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
  }) : super(key: key);

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
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: hintTextColor,
          ),
          border: underLine
              ? const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFC4C4C4), width: 1),
          )
              : InputBorder.none,
          enabledBorder: underLine
              ? const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFC4C4C4), width: 1),
          )
              : InputBorder.none,
          focusedBorder: underLine
              ? const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF000000), width: 1),
          )
              : InputBorder.none,
        ),
      ),
    );
  }
}
