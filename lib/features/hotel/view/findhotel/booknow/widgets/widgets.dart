import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../utils/constants/colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final double letterSpacing;
  final TextAlign textAlign;

  const SectionTitle({
    super.key,
    required this.title,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.color,
    this.letterSpacing = 0.5,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: GoogleFonts.roboto(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color ?? Colors.black,
        letterSpacing: letterSpacing,
      ),
    );
  }
}

class InfoChipGrid extends StatelessWidget {
  final List<Map<String, String>> chips;

  const InfoChipGrid({super.key, required this.chips});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero, // Remove default padding
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 6, // reduced spacing
        crossAxisSpacing: 6, // reduced spacing
        childAspectRatio: 3.0, // increased to make items even flatter
      ),
      itemCount: chips.length,
      itemBuilder: (context, index) {
        return _buildInfoChip(chips[index]['asset']!, chips[index]['text']!);
      },
    );
  }

  Widget _buildInfoChip(String assetPath, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), // reduced padding
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            assetPath,
            width: 22,
            height: 22,
            color: AppColors.primary,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 4),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}