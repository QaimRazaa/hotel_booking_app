import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import '../../../../../utils/device/device_utils.dart';

class CustomSmallAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onLocationTap;

  const CustomSmallAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    this.onLocationTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: AppSizes.width(4),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: AppSizes.font(2.7), // responsive font
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          ),
          SizedBox(height: AppSizes.height(0.5)),
          Text(
            subtitle,
            style: GoogleFonts.roboto(
              fontSize: AppSizes.font(1.6), // responsive font
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: onLocationTap,
          icon: Icon(
            Icons.location_on_outlined,
            color: AppColors.primary,
            size: AppSizes.icon(3), // responsive icon
          ),
        ),
        SizedBox(width: AppSizes.width(2)),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppSizes.height(7.5));
}
