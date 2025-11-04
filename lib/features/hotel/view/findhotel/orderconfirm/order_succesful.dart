import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:provider/provider.dart';

import '../../../../../core/routes.dart';
import '../../../../../utils/constants/texts.dart';
import '../../../../../utils/device/device_utils.dart';
import '../../../viewmodel/order_successful_provider.dart';

class OrderSuccessfulScreen extends StatefulWidget {
  const OrderSuccessfulScreen({super.key});

  @override
  State<OrderSuccessfulScreen> createState() => _OrderSuccessfulScreenState();
}

class _OrderSuccessfulScreenState extends State<OrderSuccessfulScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<OrderSuccessfulProvider>(context, listen: false)
        .initializeNavigation(context, AppRoutes.redeemVoucherScreen);
  }
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
                image: AssetImage(AppImages.backgroundTwo),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: AppColors.linerGradient.withOpacity(0.5)
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.width(5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(AppImages.bedIcon),
                  ),
                  SizedBox(height: AppSizes.height(2)),
                  Text(
                    AppTexts.thankYou,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: AppSizes.font(6),
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: AppSizes.height(3.5)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizes.width(5)),
                    child: Text(
                      AppTexts.orderSuccessful,
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: AppSizes.font(3.5),
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}