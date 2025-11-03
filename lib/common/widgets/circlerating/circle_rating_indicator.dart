import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CircularRatingIndicator extends StatelessWidget {
  final double rating;
  final double maxRating;
  final double size;
  final Color activeColor;
  final Color inactiveColor;
  final double strokeWidth;
  final TextStyle? textStyle;

  const CircularRatingIndicator({
    super.key,
    required this.rating,
    this.maxRating = 5.0,
    this.size = 60,
    this.activeColor = Colors.green,
    this.inactiveColor = Colors.grey,
    this.strokeWidth = 8,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = (rating / maxRating) * 100;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              sectionsSpace: 0,
              centerSpaceRadius: size / 2 - strokeWidth,
              sections: [
                // Active section (rating)
                PieChartSectionData(
                  value: percentage,
                  color: activeColor,
                  radius: strokeWidth,
                  showTitle: false,
                ),
                // Inactive section (remaining)
                PieChartSectionData(
                  value: 100 - percentage,
                  color: inactiveColor.withOpacity(0.3),
                  radius: strokeWidth,
                  showTitle: false,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              rating.toStringAsFixed(1),
              style: textStyle ??
                  TextStyle(
                    fontSize: size / 3,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}