import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

import '../../../../../utils/device/device_utils.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final IconData? icon;
  final bool showArrow;
  final Color? backgroundColor;
  final Color? textColor;

  const SettingsTile({
    super.key,
    required this.title,
    required this.onTap,
    this.icon,
    this.showArrow = true,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.width(5),
          vertical: AppSizes.height(1.5),
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(AppSizes.radius(4)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            if (icon != null) ...[
              Icon(icon, color: AppColors.primary),
              SizedBox(width: AppSizes.width(3)),
            ],
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: AppSizes.font(1.8),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (showArrow)
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.primary,
                size: AppSizes.icon(2),
              ),
          ],
        ),
      ),
    );
  }
}
