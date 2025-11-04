import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

import '../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../core/routes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/texts.dart';
import '../../../../utils/device/device_utils.dart';

class AddACardScreen extends StatefulWidget {
  const AddACardScreen({super.key});

  @override
  State<AddACardScreen> createState() => _AddACardScreenState();
}

class _AddACardScreenState extends State<AddACardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Add A Card',
              showBackArrow: true,
              showActions: false,
            ),

            SizedBox(height: AppSizes.height(1.2)),

            Image(
              image: const AssetImage(AppImages.card),
              width: AppSizes.width(80),
              height: AppSizes.height(25),
              fit: BoxFit.contain,
            ),

            SizedBox(height: AppSizes.height(1.2)),

            Padding(
              padding: AppSizes.paddingAll(12),
              child: CustomElevatedButton(
                text: AppTexts.add,
                textColor: AppColors.white,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.myProfileScreen);
                },
                gradient: AppColors.linerGradient2,
                borderRadius: AppSizes.radius(3.5),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
