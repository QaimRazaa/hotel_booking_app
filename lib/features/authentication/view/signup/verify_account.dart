import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/features/authentication/view/signin/sign_in.dart';

import '../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../common/widgets/textfield/textfield.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../viewmodel/verify_account_viewmodel.dart';

class VerifyAccountScreen extends StatefulWidget {
  const VerifyAccountScreen({super.key});

  @override
  State<VerifyAccountScreen> createState() => _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends State<VerifyAccountScreen> {
  final VerifyAccountViewModel _viewModel = VerifyAccountViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.startVerificationTimer(context, SignInScreen());
  }
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
                  'Verify Account',
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
                    padding: EdgeInsets.all(Sizes.defaultSpace),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(Sizes.defaultSpace / 3),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'VERIFY MOBILE NUMBER',
                                style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                'OTP has been sent to you on your mobile number, please enter it below',
                                style: Theme.of(context).textTheme.bodySmall
                              ),
                              SizedBox(height: 32),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomTextField(
                                    hintText: '',
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    underLine: true,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  CustomTextField(
                                    hintText: '',
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    underLine: true,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  CustomTextField(
                                    hintText: '',
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    underLine: true,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  CustomTextField(
                                    hintText: '',
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    underLine: true,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              SizedBox(height: 24),
                              Center(
                                child: Text(
                                  "Don't received otp?",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff8E929B),
                                  ),
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomElevatedButton(
                                      text: 'Resend in 30s',
                                      backgroundColor: AppColors.green,
                                      textColor: Colors.white,
                                      fontSize: 16,
                                      onPressed: () {},
                                      borderRadius: 12,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: CustomElevatedButton(
                                      text: 'Change number',
                                      backgroundColor: AppColors.blue,
                                      textColor: Colors.white,
                                      fontSize: 16,
                                      onPressed: () {},
                                      borderRadius: 12,
                                    ),
                                  ),
                                ],
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
