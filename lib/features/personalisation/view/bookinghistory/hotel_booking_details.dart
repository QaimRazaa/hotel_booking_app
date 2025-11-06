import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

import '../../../../common/widgets/sectionheading/section_heading.dart';
import '../../../../utils/device/device_utils.dart';

class HotelBookingDetails extends StatefulWidget {
  const HotelBookingDetails({super.key});

  @override
  State<HotelBookingDetails> createState() => _HotelBookingDetailsState();
}

class _HotelBookingDetailsState extends State<HotelBookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Booking Details',
                showActions: false,
                showBackArrow: true,
              ),
              Padding(
                padding: AppSizes.paddingOnly(right: 7, left: 7, bottom: 5),
                child: Column(
                  children: [
                    SectionTitle(
                      title: 'Room details',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.primary,
                    ),

                    SizedBox(height: AppSizes.height(1)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'Checkin date & time',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '23 July 2019, 10:00 AM',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(1)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'Checkout date & time',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '25 July 2019, 10:00 AM',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(1)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'No.of  Adults',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '2',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(1)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'No.of  Children',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '2',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(1)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'No.of  room',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '1',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'Price',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: "\$125",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(1)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'Tax',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '\$20',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(1)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'Total',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '\$145',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SectionTitle(
                      title: 'Food details',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.primary,
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
                          title: "\$10",
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(1)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'Sandwich',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '\$5',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(1)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'Sub total',
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

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'Service tax',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '\$2',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SectionTitle(
                            title: 'Total',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        SectionTitle(
                          title: '\$17',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(5)),
                    CustomElevatedButton(
                      text: 'Book again',
                      textColor: AppColors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.bookNowScreen);
                      },
                      gradient: AppColors.linerGradient3,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
