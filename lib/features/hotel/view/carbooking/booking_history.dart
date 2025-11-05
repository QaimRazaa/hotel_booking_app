import 'package:flutter/material.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/tabbar.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';

import '../../../personalisation/view/settings/widgets/settings_tile.dart';

class BookingHistory extends StatefulWidget {
  const BookingHistory({super.key});

  @override
  State<BookingHistory> createState() => _BookingHistoryState();
}

class _BookingHistoryState extends State<BookingHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Car Booking History',
                showActions: false,
                showBackArrow: true,
              ),
              Padding(
                padding: AppSizes.paddingAll(3),
                child: Column(
                  children: [
                    CustomTabBar(
                      tabs: const ['Completed', 'Current', 'Cancelled'],
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SettingsTile(
                      icon: Icons.location_on,
                      title: "Abidjan, Airport \nTo \nAbidjan, Côte d'Ivoire",
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.bookingDetails);
                      },
                      showArrow: false,
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SettingsTile(
                      icon: Icons.location_on,
                      title: "Abidjan, Airport \nTo \nAbidjan, Côte d'Ivoire",
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.bookingDetails);
                      },
                      showArrow: false,
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SettingsTile(
                      icon: Icons.location_on,
                      title: "Abidjan, Airport \nTo \nAbidjan, Côte d'Ivoire",
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.bookingDetails);
                      },
                      showArrow: false,
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
