import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/common/widgets/sectionheading/section_heading.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/widgets.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/text_style.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({super.key});

  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopHotelImage(
              actionIcon: null,
              imagePath: AppImages.foodOne,
              title: '',
              location: '',
              height: 380,
              rating: 3.9,
              showLocationIcon: false,
            ),
            SizedBox(height: AppSizes.height(1)),
            Padding(
              padding: AppSizes.paddingAll(6),
              child: Column(
                children: [
                  SectionTitle(
                    title: 'Bagles with turkey and bacon',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: AppSizes.height(1)),
                  Text(
                    'A poppy seed bagel is spread with a mixture of cream cheese, parsley and pickles. Subsequently, a slice of crisp lettuce is added, with a slice of tomato, two half slices of turkey and two half slices of pastrami. To top it off, this king feast takes only five minutes to complete and contains less than 400 calories.',
                    style: AppTextStyles.smallText(color: AppColors.darkerGrey),
                  ),
                  SizedBox(height: AppSizes.height(2)),
                  SectionTitle(
                    title: 'Price : \$10',
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomElevatedButton(
        text: 'ADD TO BAG',
        textColor: AppColors.white,
        onPressed: () {Navigator.pushNamed(context, AppRoutes.foodMenu);},
        gradient: AppColors.linerGradient3,
        borderRadius: 0,
      ),
    );
  }
}
