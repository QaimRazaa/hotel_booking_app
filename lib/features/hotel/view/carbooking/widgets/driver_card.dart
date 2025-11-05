import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';

class DriverCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double rating;
  final int reviewCount;
  final String phoneNumber;
  final VoidCallback? onCallPressed;
  final VoidCallback? onTrackPressed;
  final Color? cardColor;
  final Color? nameColor;
  final Color? ratingColor;
  final Color? reviewColor;
  final Color? phoneColor;
  final Color? callIconColor;
  final Color? trackTextColor;
  final Widget? customCallButton;
  final Widget? customTrackButton;

  const DriverCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.reviewCount,
    required this.phoneNumber,
    this.onCallPressed,
    this.onTrackPressed,
    this.cardColor,
    this.nameColor,
    this.ratingColor,
    this.reviewColor,
    this.phoneColor,
    this.callIconColor,
    this.trackTextColor,
    this.customCallButton,
    this.customTrackButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSizes.width(25),
      padding: EdgeInsets.all(AppSizes.width(3)),
      decoration: BoxDecoration(
        color: cardColor ?? Colors.white,
        borderRadius: BorderRadius.circular(AppSizes.radius(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Profile Image
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.radius(2)),
            child: Image.asset(
              imageUrl,
              width: AppSizes.width(20),
              height: AppSizes.width(20),
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: AppSizes.width(20),
                  height: AppSizes.width(20),
                  color: Colors.grey[300],
                  child: Icon(Icons.person, size: AppSizes.icon(4)),
                );
              },
            ),
          ),
          SizedBox(width: AppSizes.width(3)),

          // Driver Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Name
                Text(
                  name,
                  style: GoogleFonts.roboto(
                    fontSize: AppSizes.font(1.5),
                    fontWeight: FontWeight.w600,
                    color: nameColor ?? AppColors.black,
                  ),
                ),
                SizedBox(height: AppSizes.height(0.3)),

                // Rating and Reviews
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: ratingColor ?? const Color(0xFFFFC107),
                      size: AppSizes.icon(2),
                    ),
                    SizedBox(width: AppSizes.width(1)),
                    Text(
                      rating.toString(),
                      style: GoogleFonts.roboto(
                        fontSize: AppSizes.font(1.5),
                        fontWeight: FontWeight.w500,
                        color: nameColor ?? AppColors.black,
                      ),
                    ),
                    SizedBox(width: AppSizes.width(1)),
                    Text(
                      'Reviews ($reviewCount)',
                      style: GoogleFonts.roboto(
                        fontSize: AppSizes.font(1.5),
                        fontWeight: FontWeight.w400,
                        color: reviewColor ?? Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: AppSizes.height(0.8)),

                // Phone Number
                Text(
                  phoneNumber,
                  style: GoogleFonts.roboto(
                    fontSize: AppSizes.font(1.5),
                    fontWeight: FontWeight.w500,
                    color: phoneColor ?? AppColors.black,
                  ),
                ),
              ],
            ),
          ),

          // Call Button
          customCallButton ??
              GestureDetector(
                onTap: onCallPressed,
                child: Icon(
                  Icons.call,
                  color: Colors.green,
                  size: AppSizes.icon(3),
                ),
              ),
          SizedBox(width: AppSizes.width(3)),

          // Track Button
          customTrackButton ??
              GestureDetector(
                onTap: onTrackPressed,
                child: Text(
                  'TRACK',
                  style: GoogleFonts.roboto(
                    fontSize: AppSizes.font(1.5),
                    fontWeight: FontWeight.w600,
                    color: trackTextColor ?? const Color(0xFF2196F3),
                    letterSpacing: 0.5,
                  ),
                ),
              ),
        ],
      ),
    );
  }
}