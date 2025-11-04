import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';
import '../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../common/widgets/textfield/textfield.dart';
import '../../../../core/routes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/device/device_utils.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                  AppTexts.forgotPassword,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: AppColors.white, fontSize: AppSizes.font(3)),
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
                          padding: EdgeInsets.all(AppSizes.width(1.5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: AppSizes.height(1.5)),
                              Text(
                                'Please enter your registered email \naddress to recover your password',
                                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontSize: AppSizes.font(1.6),
                                ),
                              ),
                              SizedBox(height: AppSizes.height(4)),
                              CustomTextField(
                                hintText: AppTexts.email,
                                prefixIcon: Icons.email_outlined,
                              ),
                              SizedBox(height: AppSizes.height(5)),
                              SizedBox(
                                width: double.infinity,
                                height: AppSizes.height(5.2),
                                child: CustomElevatedButton(
                                  text: 'Submit',
                                  gradient: AppColors.linerGradient2,
                                  textColor: Colors.white,
                                  fontSize: AppSizes.font(2),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.signInScreen,
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
