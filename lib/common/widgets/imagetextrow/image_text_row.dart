import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class ImageTextRow extends StatelessWidget {
  final String assetPath;
  final String text;
  final double imageSize;
  final Color? imageColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final double spacing;

  const ImageTextRow({
    super.key,
    required this.assetPath,
    required this.text,
    this.imageSize = 24,
    this.imageColor,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.textColor = AppColors.black,
    this.spacing = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          assetPath,
          width: imageSize,
          height: imageSize,
          color: imageColor,
          fit: BoxFit.contain,
        ),
        SizedBox(width: spacing),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
