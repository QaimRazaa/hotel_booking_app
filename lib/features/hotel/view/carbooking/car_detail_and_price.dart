import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/core/routes.dart';

import '../../../../common/widgets/searchfield/searchField.dart';
import '../../../../common/widgets/sectionheading/section_heading.dart';
import '../../../../common/widgets/textfield/textfield.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/text_style.dart';
import '../../../../utils/device/device_utils.dart';
import '../rooms/widgets/appbar.dart';
import '../rooms/widgets/navbar.dart';

class CarDetailAndPrice extends StatefulWidget {
  const CarDetailAndPrice({super.key});

  @override
  State<CarDetailAndPrice> createState() => _CarDetailAndPriceState();
}

class _CarDetailAndPriceState extends State<CarDetailAndPrice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               CustomAppBar(
                title: 'Book a Car',
                showBackArrow: false,
                showActions: true,
                actions: [
                  PopupMenuButton<String>(
                    icon:  Icon(Icons.more_vert, color: AppColors.black),
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(12),
                    onSelected: (value) {
                      if (value == 'history') {
                        Navigator.pushNamed(context, AppRoutes.bookingHistory);
                      }
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem<String>(
                        value: 'history',
                        child:  Text(
                            'History',
                            style: AppTextStyles.buttonText().copyWith(color: AppColors.white)
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: AppSizes.paddingOnly(
                  top: 1,
                  bottom: 4,
                  left: 3,
                  right: 3,
                ),
                child: Column(
                  children: [
                    CustomSearchField(
                      hintText: 'Abidjan, Airport',
                      prefixIcon: Icons.location_on_outlined,
                      hintTextColor: AppColors.black,
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    CustomSearchField(
                      hintText: "Abidjan, Côte d'Ivoire",
                      prefixIcon: Icons.location_on_outlined,
                      hintTextColor: AppColors.black,
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    Divider(color: AppColors.dividerColor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SectionTitle(
                                  title: 'car  ',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                                SectionTitle(
                                  title: 'Saloon',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: AppSizes.width(40),
                              child: Divider(color: AppColors.dividerColor),
                            ),
                            Row(
                              children: [
                                SectionTitle(
                                  title: 'Language  ',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                                SectionTitle(
                                  title: 'English',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SectionTitle(
                                  title: 'ETA  ',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                                SectionTitle(
                                  title: '15 min',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: AppSizes.width(40),
                              child: Divider(color: AppColors.dividerColor),
                            ),
                            Row(
                              children: [
                                SectionTitle(
                                  title: 'Total Price  ',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                                SectionTitle(
                                  title: '\$20',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: AppSizes.height(80),
                    child: Image.asset(AppImages.map, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 0,
                    right: AppSizes.width(3),
                    child: Transform.translate(
                      offset: Offset(0, -AppSizes.height(3)),
                      child: GestureDetector(
                          onTap: (){Navigator.pushNamed(context, AppRoutes.assignedDriver);},
                          child: Image.asset(AppImages.okayIcon)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
