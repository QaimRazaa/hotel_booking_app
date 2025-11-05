import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/core/routes.dart';

import '../../../../common/widgets/searchfield/searchField.dart';
import '../../../../common/widgets/sectionheading/section_heading.dart';
import '../../../../common/widgets/textfield/textfield.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
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
              const CustomAppBar(
                title: 'Book a Car',
                showBackArrow: false,
                showActions: false,
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
                          children: [
                            Row(
                              children: [
                                SectionTitle(
                                  title: 'car  ',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                                SizedBox(height: AppSizes.height(1)),
                                SectionTitle(
                                  title: 'Saloon',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            Divider(color: AppColors.dividerColor),
                            SizedBox(height: AppSizes.height(1)),

                            Row(
                              children: [
                                SectionTitle(
                                  title: 'Language  ',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                                SizedBox(height: AppSizes.height(1)),
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
                          children: [
                            Row(
                              children: [
                                SectionTitle(
                                  title: 'ETA  ',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                                SizedBox(height: AppSizes.height(1)),
                                SectionTitle(
                                  title: '15 min',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            Divider(color: AppColors.dividerColor),
                            SizedBox(height: AppSizes.height(1)),

                            Row(
                              children: [
                                SectionTitle(
                                  title: 'Total Price  ',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                ),
                                SizedBox(height: AppSizes.height(1)),
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
                          child: Image.asset(AppImages.cancelIcon)),
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
