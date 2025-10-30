import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/common/widgets/textfield/textfield.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/amenity_row.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/datepicker.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/navbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/places_and_hotels.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/tabbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';

import '../../../../common/widgets/dropdownfield/dropdownfield.dart';

class RoomsScreen extends StatefulWidget {
  const RoomsScreen({super.key});

  @override
  State<RoomsScreen> createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {
  int? selectedIndex;
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTabBar(),

                      const SizedBox(height: 20),
                      CustomDropdownField(
                        hintText: 'Where do you want',
                        prefixIcon: Icons.location_on,
                        items: [
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

                      const SizedBox(height: 12),
                      CustomDatePicker(
                        hintText: 'Check In Date & Time',
                        initialDate: selectedDate,
                        onDateSelected: (pickedDate) {
                          setState(() {
                            selectedDate = pickedDate;
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomDatePicker(
                        hintText: 'Check Out Date & Time',
                        initialDate: selectedDate,
                        onDateSelected: (pickedDate) {
                          setState(() {
                            selectedDate = pickedDate;
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        hintText: '2 Adults.  2 Children.  1 room',
                        prefixIcon: Icons.people_outline,
                        hintTextColor: AppColors.black,
                        fontSize: 18,
                      ),
                      const SizedBox(height: 25),
                      AmenityRow(),
                      const SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        child: CustomElevatedButton(
                          text: 'Search',
                          gradient: AppColors.linerGradient2,
                          onPressed: () {},
                          textColor: AppColors.white,
                          borderRadius: 12,
                        ),
                      ),
                      const SizedBox(height: 30),
                      PlacesAndHotels('BEST PLACES', [
                        {'name': 'Ivory Coast', 'image': AppImages.ivory},
                        {'name': 'Senegal', 'image': AppImages.placeTwo},
                        {'name': 'Ville', 'image': AppImages.placeThree},
                      ]),

                      const SizedBox(height: 20),
                      Divider(),
                      const SizedBox(height: 20),
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
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
