import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';

import '../../../utils/constants/colors.dart';
import '../elevatedbutton/elevated_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: AppTexts.facebook,
            backgroundColor: AppColors.blue,
            textColor: Colors.white,
            fontSize: 18,
            onPressed: () {},
          ),
        ),
        SizedBox(width: Sizes.spaceBetweenItems),
        Expanded(
          child: CustomElevatedButton(
            text: AppTexts.google,
            backgroundColor: AppColors.red,
            textColor: Colors.white,
            fontSize: 18,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
