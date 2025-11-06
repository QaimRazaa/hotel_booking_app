import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

import '../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../common/widgets/textfield/textfield.dart';
import '../../../../core/routes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/texts.dart';
import '../../../../utils/device/device_utils.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Change Password',
                showActions: false,
                showBackArrow: true,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: AppSizes.width(5) ),
                child: Column(
                  children: [
                    SizedBox(height: AppSizes.height(2.5)),
                    CustomTextField(
                      hintText: AppTexts.oldPassword,
                      prefixIcon: Icons.lock_outline,
                      obscureText: true,
                    ),
                    SizedBox(height: AppSizes.height(3)),
                    CustomTextField(
                      hintText: AppTexts.createNewPassword,
                      prefixIcon: Icons.lock_outline,
                      obscureText: true,
                    ),
                    SizedBox(height: AppSizes.height(3)),
                    CustomTextField(
                      hintText: AppTexts.confirmNewPassword,
                      prefixIcon: Icons.lock_outline,
                      obscureText: true,
                    ),
                    SizedBox(height: AppSizes.height(8)),
                    CustomElevatedButton(
                      text: AppTexts.update,
                      textColor: AppColors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.myProfileScreen);
                      },
                      gradient: AppColors.linerGradient2,
                      borderRadius: AppSizes.radius(3.5),
                      width: double.infinity,
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
