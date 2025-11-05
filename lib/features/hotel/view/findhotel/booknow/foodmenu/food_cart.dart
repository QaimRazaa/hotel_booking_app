import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/sectionheading/section_heading.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/foodmenu/widgets/item_card.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';
import '../../../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../../../core/routes.dart';
import '../../../../../../utils/device/device_utils.dart';

class FoodCart extends StatefulWidget {
  const FoodCart({super.key});

  @override
  State<FoodCart> createState() => _FoodCartState();
}

class _FoodCartState extends State<FoodCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(
                title: 'Food Cart',
                showActions: false,
                showBackArrow: true,
              ),

              SizedBox(height: AppSizes.height(2)),

              Padding(
                padding: AppSizes.paddingSymmetric(horizontal: 5, vertical: 1),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionTitle(
                          title: '1 Items Added',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        SectionTitle(
                          title: 'Total : \$12',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),

                    SizedBox(height: AppSizes.height(1)),
                    Divider(color: AppColors.dividerColor),

                    SizedBox(height: AppSizes.height(1)),
                    const FoodItemCard(
                      itemId: 'bagels',
                      imageUrl: AppImages.foodOne,
                      title: 'Bagels with turkey and bacon',
                      price: 15,
                    ),

                    SizedBox(height: AppSizes.height(1)),
                    Divider(color: AppColors.dividerColor),

                    SizedBox(height: AppSizes.height(1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionTitle(
                          title: 'Select Time',
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                        SectionTitle(
                          title: '00 : 00 : 00',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),

                    SizedBox(height: AppSizes.height(1)),
                    Divider(color: AppColors.dividerColor),

                    SizedBox(height: AppSizes.height(1)),
                    SectionTitle(
                      title: 'ORDER SUMMARY',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),

                    SizedBox(height: AppSizes.height(1)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'Bagels with turkey and bacon',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '\$15',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),

                    SizedBox(height: AppSizes.height(1)),
                    Divider(color: AppColors.dividerColor),

                    SizedBox(height: AppSizes.height(1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionTitle(
                          title: 'Sub Total',
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                        SectionTitle(
                          title: '\$15',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),

                    SizedBox(height: AppSizes.height(1)),
                    Divider(color: AppColors.dividerColor),

                    SizedBox(height: AppSizes.height(1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionTitle(
                          title: 'Service Tax',
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                        SectionTitle(
                          title: '\$2',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),

                    SizedBox(height: AppSizes.height(1)),
                    Divider(color: AppColors.dividerColor),

                    SizedBox(height: AppSizes.height(1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionTitle(
                          title: 'Total',
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                        SectionTitle(
                          title: '\$17',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
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

      // Bottom Button
      bottomNavigationBar: CustomElevatedButton(
        text: 'PROCEED TO PAYMENT',
        textColor: AppColors.white,
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);
        },
        gradient: AppColors.linerGradient3,
        borderRadius: 0,
      ),
    );
  }
}
