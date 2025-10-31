import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/common/widgets/login/bottom.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';

import '../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../common/widgets/textfield/textfield.dart';
import '../../../../core/routes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                SizedBox(height: 50),
                Text(
                  AppTexts.signIn,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: Sizes.size15),

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
                        Padding(
                          padding: EdgeInsets.only(
                            top: Sizes.defaultSpace * 2.2,
                          ),
                          child: Column(
                            children: [
                              CustomTextField(
                                hintText: AppTexts.email,
                                prefixIcon: Icons.email_outlined,
                              ),
                              SizedBox(height: Sizes.size20),

                              CustomTextField(
                                hintText: AppTexts.password,
                                prefixIcon: Icons.lock_outline,
                                obscureText: true,
                              ),
                              SizedBox(height: Sizes.spaceBetweenSections /2),

                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.forgotPasswordScreen);
                                }, child: Text(
                                AppTexts.forgotPassword,
                                style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  color: AppColors.darkRed,
                                ),
                              ),),
                              SizedBox(height: Sizes.spaceBetweenSections / 2),

                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: CustomElevatedButton(
                                  text: AppTexts.signIn,
                                  gradient: AppColors.linerGradient2,
                                  textColor: Colors.white,
                                  fontSize: 16,
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.roomScreen,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        LoginScreenBottom()
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
