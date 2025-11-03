import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/images.dart';
import '../../../rooms/widgets/appbar.dart';


class TopHotelImage extends StatelessWidget {
  const TopHotelImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.hotelTwo,
          height: 280,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(height: 280, color: Colors.black.withOpacity(0.3)),

        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: CustomAppBar(
            title: 'Heden Golf',
            titleColor: AppColors.white,
            showBackArrow: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.share, color: AppColors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),

        Positioned(
          bottom: 12,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '8.9',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Row(
                children: const [
                  Icon(Icons.location_on, size: 18, color: AppColors.white),
                  SizedBox(width: 4),
                  Text(
                    'Abidjan, Cocle d\'Ivoire',
                    style: TextStyle(fontSize: 18, color: Colors.white),
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
