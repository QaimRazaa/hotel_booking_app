import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/features/authentication/view/signin/sign_in.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';

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
                  AppTexts.verifyAccount,
                  style: Theme.of(context).textTheme.headlineMedium
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
                              Text(
                                AppTexts.verifyMobileNo,
                                style: Theme.of(context).textTheme.headlineSmall
                              ),
                              SizedBox(height: 12),
                              Text(
                                AppTexts.otpSent,
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
                                  AppTexts.didntRecieveOtp,
                                  style: Theme.of(context).textTheme.bodySmall
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomElevatedButton(
                                      text: AppTexts.resend,
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
                                      text: AppTexts.changeNumber,
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
