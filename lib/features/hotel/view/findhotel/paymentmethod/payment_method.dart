import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/widgets/appbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

import '../../../../../utils/device/device_utils.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Payment Methods',
                showActions: false,
                showBackArrow: true,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PaymentIconsRow(
                    paymentImages: [
                      AppImages.paymentOne,
                      AppImages.paymentTwo,
                      AppImages.paymentThree,
                      AppImages.paymentTwo,
                    ],
                  ),
                  SizedBox(height: Sizes.size50),
                  Image(image: AssetImage(AppImages.card)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class PaymentIconsRow extends StatelessWidget {
  final List<String> paymentImages;

  const PaymentIconsRow({super.key, required this.paymentImages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.height(6),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: paymentImages.length,
        separatorBuilder: (context, index) =>
            SizedBox(width: AppSizes.width(2.5)),
        itemBuilder: (context, index) {
          return SizedBox(
            width: AppSizes.width(18),
            height: AppSizes.height(6),
            child: Image.asset(paymentImages[index], fit: BoxFit.cover),
          );
        },
      ),
    );
  }
}
