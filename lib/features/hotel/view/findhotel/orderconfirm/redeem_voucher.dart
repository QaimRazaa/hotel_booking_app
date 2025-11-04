import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/textfield/textfield.dart';

import '../../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../../core/routes.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/texts.dart';
import '../../../../../utils/device/device_utils.dart';

class RedeemVoucher extends StatefulWidget {
  const RedeemVoucher({super.key});

  @override
  State<RedeemVoucher> createState() => _RedeemVoucherState();
}

class _RedeemVoucherState extends State<RedeemVoucher> {
  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: AppColors.linerGradient,
              image: DecorationImage(
                image: AssetImage(AppImages.backgroundThree),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: AppColors.linerGradient.withOpacity(0.6)
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.width(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppTexts.redeemVoucher,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: AppSizes.font(4),
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: AppSizes.height(2)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizes.width(5)),
                  child: Text(
                    AppTexts.haveVoucher,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: AppSizes.font(2),
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: AppSizes.height(4)),
                CustomTextField(
                  hintText: 'Enter Voucher Code',
                  hintTextColor: AppColors.white,
                  underlineColor: AppColors.white,
                  focusedUnderlineColor: AppColors.white,
                ),
                SizedBox(height: AppSizes.height(4)),
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    text: AppTexts.redeemVoucher,
                    textColor: AppColors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.roomScreen);
                    },
                    gradient: AppColors.linerGradient2,
                    borderRadius: AppSizes.radius(3.5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}