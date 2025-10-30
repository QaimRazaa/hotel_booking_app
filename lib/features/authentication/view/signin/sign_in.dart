import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  'Sign In',
                  style: GoogleFonts.roboto(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
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
                        Padding(
                          padding: EdgeInsets.only(
                            top: Sizes.defaultSpace * 2.2,
                          ),
                          child: Column(
                            children: [
                              CustomTextField(
                                hintText: 'Email',
                                prefixIcon: Icons.email_outlined,
                              ),
                              SizedBox(height: 20),

                              CustomTextField(
                                hintText: 'Password',
                                prefixIcon: Icons.lock_outline,
                                obscureText: true,
                              ),
                              SizedBox(height: Sizes.spaceBetweenSections /2),

                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.forgotPasswordScreen);
                                }, child: Text(
                                'Forgot Password?',
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
                                  text: 'Sign In',
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

                        Column(
                          children: [
                            SizedBox(height: 24),
                            Text(
                              'or sign In using',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff8E929B),
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: 'Facebook',
                                    backgroundColor: AppColors.blue,
                                    textColor: Colors.white,
                                    fontSize: 18,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: CustomElevatedButton(
                                    text: 'Google',
                                    backgroundColor: AppColors.red,
                                    textColor: Colors.white,
                                    fontSize: 18,
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text:
                                'By creating an account, you are agree to our ',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff8E929B),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Terms',
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.green,
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
                                  'Already have an account? ',
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff8E929B),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Sign In',
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
