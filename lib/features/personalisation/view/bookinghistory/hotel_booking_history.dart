import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/searchfield/searchField.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/widgets/hotel_card.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/features/personalisation/view/bookinghistory/widgets/swipeable_card.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/constants/text_style.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';

class HotelBookingHistory extends StatefulWidget {
  const HotelBookingHistory({super.key});

  @override
  State<HotelBookingHistory> createState() => _HotelBookingHistoryState();
}

class _HotelBookingHistoryState extends State<HotelBookingHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Booking History',
                showBackArrow: true,
                showActions: true,
                actions: [
                  Text(
                    'CLEAR ALL',
                    style: AppTextStyles.bodyText(color: AppColors.primary),
                  ),
                ],
              ),
              Padding(
                padding: AppSizes.paddingAll(3),
                child: Column(
                  children: [
                    CustomSearchField(
                      hintText: 'Search',
                      prefixIcon: Icons.search,
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SwipeableHotelCard(
                      uniqueKey: 'booking_1',
                      enableSwipe: true,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.hotelBookingDetails,
                          );
                        },
                        child: HotelCard(
                          imageUrl: AppImages.hotelTwo,
                          title: 'Heden golf',
                          rating: 4.3,
                          reviewCount: 200,
                          description: 'Booked on : 23 July 2019',
                          discount: '25\%',
                          buttonText: 'Book again',
                          onBookPressed: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.findHotelScreen,
                            );
                          },
                          price: 200,
                        ),
                      ),
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    SwipeableHotelCard(
                      uniqueKey: 'booking_2',
                      enableSwipe: true,
                      child: HotelCard(
                        imageUrl: AppImages.hotelOne,
                        title: 'Onomo',
                        rating: 4.3,
                        reviewCount: 200,
                        description: 'Booked on : 23 July 2019',
                        discount: '25\%',
                        buttonText: 'Book again',
                        onBookPressed: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.findHotelScreen,
                          );
                        },
                        price: 127,
                      ),
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    SwipeableHotelCard(
                      uniqueKey: 'booking_3',
                      enableSwipe: true,
                      child: HotelCard(
                        imageUrl: AppImages.hotelTwo,
                        title: 'Heden golf',
                        rating: 4.3,
                        reviewCount: 200,
                        description: 'Booked on : 23 July 2019',
                        discount: '25\%',
                        buttonText: 'Book again',
                        onBookPressed: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.findHotelScreen,
                          );
                        },
                        price: 200,
                      ),
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
