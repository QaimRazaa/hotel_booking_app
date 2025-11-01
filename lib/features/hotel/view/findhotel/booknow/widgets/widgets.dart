import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/images.dart';
import '../../../rooms/widgets/appbar.dart';

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
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        childAspectRatio: 3.0,
      ),
      itemCount: chips.length,
      itemBuilder: (context, index) {
        return _buildInfoChip(chips[index]['asset']!, chips[index]['text']!);
      },
    );
  }

  Widget _buildInfoChip(String assetPath, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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

class CustomBookingBar extends StatelessWidget {
  final String price;
  final String subtitle;
  final String buttonText;
  final VoidCallback onPressed;
  final Gradient? gradient;

  const CustomBookingBar({
    super.key,
    required this.price,
    this.subtitle = 'AVG/NIGHT',
    this.buttonText = 'BOOKING NOW',
    required this.onPressed,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                price,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Expanded(
            child: CustomElevatedButton(
              text: buttonText,
              textColor: AppColors.white,
              gradient: gradient,
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}

class TopHotelImage extends StatelessWidget {
  const TopHotelImage({
    super.key,
  });

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
        Container(
          height: 280,
          color: Colors.black.withOpacity(0.2),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: CustomAppBar(
            title: 'Heden Golf',
            titleColor: AppColors.white,
            showBackArrow: true,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.share,
                  color: AppColors.white,
                ),
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
                  Icon(
                    Icons.location_on,
                    size: 18,
                    color: AppColors.white,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'Abidjan, Cocle d\'Ivoire',
                    style: TextStyle(
                      fontSize: 18,
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
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}

class ContactRowWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactRowWidget({
    super.key,
    required this.icon,
    required this.text,
  });

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


