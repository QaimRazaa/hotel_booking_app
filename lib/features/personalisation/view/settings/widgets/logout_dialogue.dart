import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/text_style.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';
import '../../../../../core/routes.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: AppSizes.borderRadius(5),
      ),
      backgroundColor: Colors.white,
      child: Padding(
        padding: AppSizes.paddingOnly(top: 1.5,right: 5,left: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Logout',
              style: AppTextStyles.bodyText(
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: AppSizes.height(.8)),
            Text(
              'Are you sure you want to logout?',
              style: AppTextStyles.smallText(
                color:AppColors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: AppSizes.height(.8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'No',
                    style: AppTextStyles.bodyText(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(width: AppSizes.width(1)),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.signInScreen);
                  },
                  child: Text(
                    'Yes',
                    style: AppTextStyles.bodyText(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
