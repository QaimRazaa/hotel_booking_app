import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/common/widgets/textfield/textfield.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/amenity_row.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/datepicker.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/navbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/places_and_hotels.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/tabbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import '../../../../common/widgets/dropdownfield/dropdownfield.dart';
import '../../../../utils/device/device_utils.dart';
import '../../viewmodel/findroom/room_tab_provider.dart';

class RoomsScreen extends StatefulWidget {
  const RoomsScreen({super.key});

  @override
  State<RoomsScreen> createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Find Room',
              showBackArrow: false,
              showActions: true,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(AppSizes.width(4)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Consumer<RoomsProvider>(
                        builder: (context, provider, _) => CustomTabBar(
                          tabs: const ['Hotels', 'Villas'],
                          selectedIndex: provider.selectedTab,
                          onTabSelected: provider.setTab,
                        ),
                      ),
                      SizedBox(height: AppSizes.height(2.5)),
                      CustomDropdownField(
                        hintText: 'Where do you want',
                        prefixIcon: Icons.location_on,
                        items: const [
                          {'title': 'Abidjan', 'subtitle': 'Cote divoire'},
                          {
                            'title': 'Abids',
                            'subtitle': 'Hyderabad, Telengana, India',
                          },
                          {
                            'title': 'Abidos Hotel Apartment Dubai',
                            'subtitle': 'Dubai, Dubai Emirate',
                          },
                        ],
                      ),
                      SizedBox(height: AppSizes.height(1.5)),
                      Consumer<RoomsProvider>(
                        builder: (context, provider, _) => CustomDatePicker(
                          hintText: 'Check In Date & Time',
                          initialDate: provider.selectedCheckInDate,
                          onDateSelected: provider.setCheckInDate,
                        ),
                      ),
                      SizedBox(height: AppSizes.height(1.5)),
                      Consumer<RoomsProvider>(
                        builder: (context, provider, _) => CustomDatePicker(
                          hintText: 'Check Out Date & Time',
                          initialDate: provider.selectedCheckOutDate,
                          onDateSelected: provider.setCheckOutDate,
                        ),
                      ),
                      SizedBox(height: AppSizes.height(1.5)),
                      CustomTextField(
                        hintText: '2 Adults.  2 Children.  1 room',
                        prefixIcon: Icons.people_outline,
                        hintTextColor: AppColors.black,
                        fontSize: AppSizes.font(2.0),
                      ),
                      SizedBox(height: AppSizes.height(3)),
                      AmenityRow(),
                      SizedBox(height: AppSizes.height(3)),
                      SizedBox(
                        width: double.infinity,
                        child: CustomElevatedButton(
                          text: 'Search',
                          gradient: AppColors.linerGradient2,
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              AppRoutes.findHotelScreen,
                            );
                          },
                          textColor: AppColors.white,
                          borderRadius: AppSizes.width(3),
                        ),
                      ),
                      SizedBox(height: AppSizes.height(3.5)),
                      PlacesAndHotels('BEST PLACES', [
                        {'name': 'Ivory Coast', 'image': AppImages.ivory},
                        {'name': 'Senegal', 'image': AppImages.placeTwo},
                        {'name': 'Ville', 'image': AppImages.placeThree},
                      ]),
                      SizedBox(height: AppSizes.height(2)),
                      const Divider(color: AppColors.dividerColor),
                      SizedBox(height: AppSizes.height(2)),
                      PlacesAndHotels('BEST HOTELS', [
                        {'name': 'Headen Golf', 'image': AppImages.hotelOne},
                        {'name': 'Onomo', 'image': AppImages.hotelTwo},
                        {'name': 'Adagio', 'image': AppImages.hotelThree},
                      ]),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
