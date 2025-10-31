import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/widgets/custom_country_field.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';

import '../../../../common/widgets/login/bottom.dart';
import '../../../../common/widgets/textfield/textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.linerGradient),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace / 1.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Sizes.size50),
                Text(
                  AppTexts.signUp,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: 15),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(Sizes.defaultSpace * 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CustomTextField(
                              hintText: AppTexts.fullName,
                              prefixIcon: Icons.person_outline,
                            ),
                            SizedBox(height: Sizes.size20),

                            CustomTextField(
                              hintText: AppTexts.email,
                              prefixIcon: Icons.email_outlined,
                            ),
                            SizedBox(height: Sizes.size20),

                            CountryCodeField(),
                            SizedBox(height: Sizes.size20),

                            CustomTextField(
                              hintText: AppTexts.password,
                              prefixIcon: Icons.lock_outline,
                              obscureText: true,
                            ),
                            SizedBox(height: Sizes.spaceBetweenSections),

                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: CustomElevatedButton(
                                text: AppTexts.createAccount,
                                gradient: AppColors.linerGradient2,
                                textColor: Colors.white,
                                fontSize: 16,
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.verifyAccountScreen,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),

                        LoginScreenBottom(),
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
