import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/images.dart';
import '../../../../../../utils/device/device_utils.dart';
import '../../../rooms/widgets/appbar.dart';

class TopHotelImage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String location;
  final double rating;
  final double height;
  final IconData? actionIcon;
  final VoidCallback? onActionPressed;
  final bool showLocationIcon;

  const TopHotelImage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.location,
    required this.rating,
    this.height = 280,
    this.actionIcon = Icons.share,
    this.onActionPressed,
    this.showLocationIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return Stack(
      children: [
        Image.asset(
          imagePath,
          height: AppSizes.height(height / (AppSizes.screenHeight / 100)),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: AppSizes.height(height / (AppSizes.screenHeight / 100)),
          color: Colors.black.withOpacity(0.3),
        ),
        Padding(
          padding: EdgeInsets.only(top: AppSizes.height(2)),
          child: CustomAppBar(
            title: title,
            titleColor: AppColors.white,
            showBackArrow: true,
            actions: [
              if (actionIcon != null)
                IconButton(
                  icon: Icon(actionIcon, color: AppColors.white),
                  onPressed: onActionPressed,
                ),
            ],
          ),
        ),
        Positioned(
          bottom: AppSizes.height(1.5),
          left: AppSizes.width(4),
          right: AppSizes.width(4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                rating.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSizes.font(2.2),
                ),
              ),
              Row(
                children: [
                  if (showLocationIcon)
                    const Icon(Icons.location_on, size: 18, color: AppColors.white),
                  SizedBox(width: AppSizes.width(1)),
                  Text(
                    location,
                    style: TextStyle(
                      fontSize: AppSizes.font(2),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FacilityWidget extends StatelessWidget {
  final String assetPath;
  final String title;

  const FacilityWidget({
    super.key,
    required this.assetPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          assetPath,
          width: 40,
          height: 40,
          color: AppColors.primary,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}

class ContactRowWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactRowWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, size: 18, color: AppColors.primary),
          const SizedBox(width: 12),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class FoodCardWidget extends StatelessWidget {
  final String imageUrl;
  final String label;

  const FoodCardWidget({
    super.key,
    required this.imageUrl,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              height: 80,
              width: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  Container(height: 80, width: 100, color: Colors.grey[300]),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: Colors.black),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
