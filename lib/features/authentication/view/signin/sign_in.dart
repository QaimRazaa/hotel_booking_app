import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/common/widgets/login/bottom.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';
import '../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../common/widgets/textfield/textfield.dart';
import '../../../../core/routes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/device_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                  AppTexts.signIn,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: AppSizes.font(3),
                  ),
                ),
                SizedBox(height: AppSizes.height(1.5)),

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
                        Padding(
                          padding: EdgeInsets.only(top: AppSizes.height(3)),
                          child: Column(
                            children: [
                              CustomTextField(
                                hintText: AppTexts.email,
                                prefixIcon: Icons.email_outlined,
                              ),
                              SizedBox(height: AppSizes.height(2)),

                              CustomTextField(
                                hintText: AppTexts.password,
                                prefixIcon: Icons.lock_outline,
                                obscureText: true,
                              ),
                              SizedBox(height: AppSizes.height(1.5)),

                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.forgotPasswordScreen);
                                },
                                child: Text(
                                  AppTexts.forgotPassword,
                                  style: GoogleFonts.roboto(
                                    fontSize: AppSizes.font(1.8),
                                    color: AppColors.darkRed,
                                  ),
                                ),
                              ),
                              SizedBox(height: AppSizes.height(1.5)),

                              SizedBox(
                                width: double.infinity,
                                height: AppSizes.height(5.2),
                                child: CustomElevatedButton(
                                  text: AppTexts.signIn,
                                  gradient: AppColors.linerGradient2,
                                  textColor: Colors.white,
                                  fontSize: AppSizes.font(2),
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
