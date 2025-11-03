import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

class RoomInfoRow extends StatelessWidget {
  final String label;
  final String value;
  final double labelFontSize;
  final double valueFontSize;
  final Color labelColor;
  final Color valueColor;
  final FontWeight labelFontWeight;
  final FontWeight valueFontWeight;

  const RoomInfoRow({
    super.key,
    required this.label,
    required this.value,
    this.labelFontSize = 14,
    this.valueFontSize = 14,
    this.labelColor = AppColors.lightGrey,
    this.valueColor = AppColors.black,
    this.labelFontWeight = FontWeight.w400,
    this.valueFontWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: GoogleFonts.roboto(
            fontWeight: labelFontWeight,
            color: labelColor,
            fontSize: labelFontSize,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.roboto(
            fontWeight: valueFontWeight,
            color: valueColor,
            fontSize: valueFontSize,
          ),
        ),
      ],
    );
  }
}
