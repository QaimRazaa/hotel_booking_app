import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

import '../../../../common/widgets/textfield/textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String selectedCountryCode = '+225';

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
                  'Sign Up',
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
                        Column(
                          children: [
                            CustomTextField(
                              hintText: 'Full Name',
                              prefixIcon: Icons.person_outline,
                            ),
                            SizedBox(height: 20),

                            CustomTextField(
                              hintText: 'Email',
                              prefixIcon: Icons.email_outlined,
                            ),
                            SizedBox(height: 20),

                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color(0xFFC4C4C4),
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.phone_outlined,
                                    color: AppColors.primary,
                                  ),
                                  SizedBox(width: 12),

                                  DropdownButtonHideUnderline(
                                    child: DropdownButton<String>(
                                      value: selectedCountryCode,
                                      icon: Icon(
                                        Icons.arrow_drop_down,
                                        color: AppColors.primary,
                                      ),
                                      items: ['+225', '+1', '+44', '+91', '+92']
                                          .map(
                                            (code) => DropdownMenuItem(
                                          value: code,
                                          child: Text(code),
                                        ),
                                      )
                                          .toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedCountryCode = value!;
                                        });
                                      },
                                    ),
                                  ),

                                  SizedBox(width: 8),
                                  Expanded(
                                    child: CustomTextField(
                                      hintText: 'Mobile Number',
                                      prefixIcon: null,
                                      underLine: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),

                            CustomTextField(
                              hintText: 'Password',
                              prefixIcon: Icons.lock_outline,
                              obscureText: true,
                            ),
                            SizedBox(height: 32),

                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: CustomElevatedButton(
                                text: 'Create Account',
                                gradient: AppColors.linerGradient2,
                                textColor: Colors.white,
                                fontSize: 16,
                                onPressed: () {Navigator.pushNamed(context, AppRoutes.verifyAccountScreen);},
                              ),
                            ),

                          ],
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
                                text: 'By creating an account, you are agree to our ',
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
