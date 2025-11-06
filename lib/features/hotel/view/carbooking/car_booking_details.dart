import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

import '../../../../common/widgets/sectionheading/section_heading.dart';
import '../../../../utils/device/device_utils.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({super.key});

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
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
                showBackArrow: true,
                showActions: false,
              ),
              Padding(
                padding: AppSizes.paddingOnly(right: 7, left: 7, bottom: 5),
                child: Column(
                  children: [
                    SectionTitle(
                      title: 'Pick up',
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
                            title: 'Location',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: 'Abidjan, Airport',
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
                            title: 'Date',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '23 July 2019',
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
                            title: 'Time',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '10:00 AM',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SectionTitle(
                      title: 'Drop off',
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
                            title: 'Location',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: "Abidjan, Côte d'Ivoire",
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
                            title: 'Date',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '23 July 2019',
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
                            title: 'Time',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '11:00 AM',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SectionTitle(
                      title: 'Invoice',
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
                            title: 'Language',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: "English",
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
                          title: '\$25',
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
                            title: 'Total price',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '\$30',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SectionTitle(
                      title: 'Car',
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
                            title: 'Car type',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: "Saloon",
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
                            title: 'Car Reg.no',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: 'ABDJ2598',
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
                            title: 'Car make',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: 'Honda',
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
                            title: 'Car model',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: 'city',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SectionTitle(
                      title: 'Driver',
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
                            title: 'Name',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: "Winston",
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
                            title: 'Email',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: 'winston@gmail.com',
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
                            title: 'Mobile number',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '+225 22 43 15 89',
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
                            title: 'Rating',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: '3.9',
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
                            title: 'Dri. licence no',
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                        SectionTitle(
                          title: 'Aghj2589331',
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
    );
  }
}
