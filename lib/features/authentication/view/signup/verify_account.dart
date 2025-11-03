import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/authentication/view/signin/sign_in.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';
import '../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../common/widgets/textfield/textfield.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/device_utils.dart';
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
                  AppTexts.verifyAccount,
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
                        Padding(
                          padding: EdgeInsets.all(AppSizes.width(2)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppTexts.verifyMobileNo,
                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontSize: AppSizes.font(2),
                                ),
                              ),
                              SizedBox(height: AppSizes.height(1.5)),
                              Text(
                                AppTexts.otpSent,
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontSize: AppSizes.font(1.5),
                                ),
                              ),
                              SizedBox(height: AppSizes.height(4)),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: List.generate(4, (_) => SizedBox(
                                  width: AppSizes.width(12),
                                  child: CustomTextField(
                                    hintText: '',
                                    maxLength: 1,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    underLine: true,
                                    fontSize: AppSizes.font(2.5),
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                              ),

                              SizedBox(height: AppSizes.height(3)),
                              Center(
                                child: Text(
                                  AppTexts.didntRecieveOtp,
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontSize: AppSizes.font(1.5),
                                  ),
                                ),
                              ),
                              SizedBox(height: AppSizes.height(2)),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomElevatedButton(
                                      text: AppTexts.resend,
                                      backgroundColor: AppColors.green,
                                      textColor: Colors.white,
                                      fontSize: AppSizes.font(1.8),
                                      onPressed: () {},
                                      borderRadius: AppSizes.width(3),
                                    ),
                                  ),
                                  SizedBox(width: AppSizes.width(3)),
                                  Expanded(
                                    child: CustomElevatedButton(
                                      text: AppTexts.changeNumber,
                                      backgroundColor: AppColors.blue,
                                      textColor: Colors.white,
                                      fontSize: AppSizes.font(1.8),
                                      onPressed: () {},
                                      borderRadius: AppSizes.width(3),
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
