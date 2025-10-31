import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';

import '../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../common/widgets/textfield/textfield.dart';
import '../../../../core/routes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.linerGradient),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace / 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  AppTexts.forgotPassword,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: AppColors.white)
                ),
                SizedBox(height: Sizes.size15),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(Sizes.defaultSpace),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(Sizes.defaultSpace / 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 12),
                              Text(
                                  'Please  enter your registered email \n address to recover your password',
                                  style: Theme.of(context).textTheme.bodySmall
                              ),
                              SizedBox(height: 32),
                              CustomTextField(
                                hintText: AppTexts.email,
                                prefixIcon: Icons.email_outlined,
                              ),
                              SizedBox(height: Sizes.size20 * 2),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: CustomElevatedButton(
                                  text: 'Submit',
                                  gradient: AppColors.linerGradient2,
                                  textColor: Colors.white,
                                  fontSize: 16,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.forgotPasswordScreen,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
