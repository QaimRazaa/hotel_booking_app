import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';
import '../elevatedbutton/elevated_button.dart';

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
           SizedBox(width: Sizes.size20),
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
