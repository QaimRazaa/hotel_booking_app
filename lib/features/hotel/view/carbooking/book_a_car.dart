import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/searchfield/searchField.dart';
import 'package:hotel_booking_app/common/widgets/sectionheading/section_heading.dart';
import 'package:hotel_booking_app/common/widgets/textfield/textfield.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/navbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';

class BookACar extends StatefulWidget {
  const BookACar({super.key});

  @override
  State<BookACar> createState() => _BookACarState();
}

class _BookACarState extends State<BookACar> {
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
                padding: AppSizes.paddingOnly(top: 1, bottom: 4, left: 3, right: 3),
                child:
                Column(
                  children: [
                    CustomSearchField(
                      hintText: 'Pickup Location',
                      prefixIcon: Icons.location_on_outlined,
                      hintTextColor: AppColors.black,
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    CustomSearchField(
                      hintText: 'Dropoff Location',
                      prefixIcon: Icons.location_on_outlined,
                      hintTextColor: AppColors.black,
                    ),
                  ],
                ),
              ),

              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: AppSizes.height(53),
                    child: Image.asset(AppImages.map, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 0,
                    right: AppSizes.width(3),
                    child: Transform.translate(
                      offset: Offset(0, -AppSizes.height(3)),
                      child: GestureDetector(
                        onTap: (){Navigator.pushNamed(context, AppRoutes.carDetail);},
                        child: Image.asset(
                          AppImages.okayIcon,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: AppSizes.height(3)),

              Padding(
                padding: AppSizes.paddingSymmetric(horizontal: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SectionTitle(
                            title: 'Select Car Type',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.lightGrey,
                          ),
                          CustomTextField(
                            hintText: 'Select Car Type',
                            postfixIconColor: AppColors.black,
                            postfixIcon: CupertinoIcons.down_arrow,
                            hintTextColor: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: AppSizes.width(4)),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SectionTitle(
                            title: 'Select Language',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: AppColors.lightGrey,
                          ),
                          CustomTextField(
                            hintText: 'Select Language',
                            postfixIcon: CupertinoIcons.down_arrow,
                            postfixIconColor: AppColors.black,
                            hintTextColor: AppColors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}