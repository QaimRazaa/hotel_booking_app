import 'package:flutter/material.dart';

import '../../../../../core/routes.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_style.dart';
import '../../../../../utils/device/device_utils.dart';

class ProfileMenuButton extends StatelessWidget {
  const ProfileMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppSizes.height(5),
      right: AppSizes.width(4),
      child: PopupMenuButton<String>(
        icon: const Icon(Icons.more_vert, color: AppColors.primary),
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(12),
        onSelected: (value) {
          if (value == 'password') {
            Navigator.pushNamed(context, AppRoutes.changePasswordScreen);
          }
          if (value == 'booking history') {
            Navigator.pushNamed(context, AppRoutes.hotelBookingHistory);
          }
        },
        itemBuilder: (context) => [
          PopupMenuItem<String>(
            value: 'password',
            child:  Text(
                'Change Password',
                style: AppTextStyles.buttonText().copyWith(color: AppColors.white)
            ),
          ),PopupMenuItem<String>(
            value: 'booking history',
            child:  Text(
                'Booking History',
                style: AppTextStyles.buttonText().copyWith(color: AppColors.white)
            ),
          ),
        ],
      ),
    );
  }
}
