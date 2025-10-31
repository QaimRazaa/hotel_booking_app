import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

class SmallElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Gradient gradient;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final double borderRadius;
  final Color? textColor;
  final double elevation;

  const SmallElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.gradient,
    this.width,
    this.height,
    this.padding,
    this.textStyle,
    this.borderRadius = 8.0,
    this.textColor = Colors.white,
    this.elevation = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: textColor,
          padding: padding ??  EdgeInsets.all(Sizes.dividerHeight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: elevation,
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ??
                TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
