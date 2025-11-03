import 'package:flutter/material.dart';

class InfoChipGrid extends StatelessWidget {
  final List<Map<String, String>> chips;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final double childAspectRatio;
  final double iconSize;
  final double fontSize;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final Color? iconColor;
  final Color textColor;
  final double horizontalPadding;
  final double verticalPadding;
  final double iconTextSpacing;
  final double borderRadius;
  final bool showText; // Add this

  const InfoChipGrid({
    super.key,
    required this.chips,
    this.crossAxisCount = 3,
    this.mainAxisSpacing = 6,
    this.crossAxisSpacing = 6,
    this.childAspectRatio = 3.0,
    this.iconSize = 22,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w300,
    this.backgroundColor = Colors.white,
    this.iconColor,
    this.textColor = Colors.black,
    this.horizontalPadding = 8,
    this.verticalPadding = 4,
    this.iconTextSpacing = 4,
    this.borderRadius = 6,
    this.showText = true, // Add this
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainAxisSpacing,
        crossAxisSpacing: crossAxisSpacing,
        childAspectRatio: childAspectRatio,
      ),
      itemCount: chips.length,
      itemBuilder: (context, index) {
        final text = chips[index]['text'];

        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                chips[index]['asset']!,
                width: iconSize,
                height: iconSize,
                color: iconColor,
                fit: BoxFit.cover,
              ),
              if (showText && text != null) ...[
                SizedBox(width: iconTextSpacing),
                Flexible(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                      color: textColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
