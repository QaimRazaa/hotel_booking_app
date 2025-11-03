import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/widgets/custom_country_field.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';
import '../../../../common/widgets/login/bottom.dart';
import '../../../../common/widgets/textfield/textfield.dart';
import '../../../../utils/device/device_utils.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.linerGradient),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(AppSizes.width(4)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppSizes.height(6)),
                Text(
                  AppTexts.signUp,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: AppSizes.font(3),
                  ),
                ),
                SizedBox(height: AppSizes.height(2)),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(AppSizes.width(5)),
                    ),
                    padding: EdgeInsets.all(AppSizes.width(4)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CustomTextField(
                              hintText: AppTexts.fullName,
                              prefixIcon: Icons.person_outline,
                            ),
                            SizedBox(height: AppSizes.height(2)),

                            CustomTextField(
                              hintText: AppTexts.email,
                              prefixIcon: Icons.email_outlined,
                            ),
                            SizedBox(height: AppSizes.height(2)),

                            CountryCodeField(),
                            SizedBox(height: AppSizes.height(2)),

                            CustomTextField(
                              hintText: AppTexts.password,
                              prefixIcon: Icons.lock_outline,
                              obscureText: true,
                            ),
                            SizedBox(height: AppSizes.height(3)),

                            SizedBox(
                              width: double.infinity,
                              height: AppSizes.height(5.2),
                              child: CustomElevatedButton(
                                text: AppTexts.createAccount,
                                gradient: AppColors.linerGradient2,
                                textColor: Colors.white,
                                fontSize: AppSizes.font(2),
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
