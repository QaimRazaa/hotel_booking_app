import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/common/widgets/login/social_buttons.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';

import '../../../utils/constants/colors.dart';

class LoginScreenBottom extends StatelessWidget {
  const LoginScreenBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24),
        Text(
          AppTexts.signInUsing,
          style: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff8E929B),
          ),
        ),
        SizedBox(height: Sizes.spaceBetweenItems),
        SocialButtons(),
        SizedBox(height: Sizes.spaceBetweenItems),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: AppTexts.termsConditions,
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff8E929B),
            ),
            children: [
              TextSpan(
                text: AppTexts.terms,
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.green
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppTexts.alreadyHaveAnAccount,
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff8E929B),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                AppTexts.signIn,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.green,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
