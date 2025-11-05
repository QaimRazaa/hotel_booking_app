import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/hotel/view/carbooking/widgets/cancel_cab.dart';
import 'package:hotel_booking_app/features/hotel/view/carbooking/widgets/driver_card.dart';

import '../../../../common/widgets/searchfield/searchField.dart';
import '../../../../common/widgets/sectionheading/section_heading.dart';
import '../../../../core/routes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/text_style.dart';
import '../../../../utils/device/device_utils.dart';
import '../rooms/widgets/appbar.dart';
import '../rooms/widgets/navbar.dart';

class AssignedDriver extends StatefulWidget {
  const AssignedDriver({super.key});

  @override
  State<AssignedDriver> createState() => _AssignedDriverState();
}

class _AssignedDriverState extends State<AssignedDriver> {
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
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const CancelCabDialog(),
                          );
                        },
                        child: Image.asset(AppImages.cancelIcon),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppSizes.width(5),
                        ),
                        child: DriverCard(
                          imageUrl: AppImages.driver,
                          name: 'Winston',
                          rating: 3.9,
                          reviewCount: 200,
                          phoneNumber: '+225 22 43 15 89',
                        ),
                      ),
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
