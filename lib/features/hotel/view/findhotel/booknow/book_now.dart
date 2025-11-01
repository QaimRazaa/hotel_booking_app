import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/widgets.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/widgets/appbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/tabbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

import '../../../../../common/widgets/textfield/textfield.dart';
import '../../rooms/widgets/appbar.dart';
import '../../rooms/widgets/datepicker.dart';


class BookNowScreen extends StatefulWidget {
  const BookNowScreen({super.key});

  @override
  State<BookNowScreen> createState() => _BookNowScreenState();
}

class _BookNowScreenState extends State<BookNowScreen> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                TopHotelImage(),
                Padding(
                  padding: EdgeInsets.all(Sizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTabBar(
                        tabs: ['Review', 'Photo(10)', 'Near by(24)'],
                      ),
                      SizedBox(height: Sizes.size20),
                      Divider(color: Color(0xffEBF1F5)),

                      Center(
                        child: SectionTitle(
                          title: 'HOTEL RECEPTION',
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Set in landscaped gardens overlooking the lake, this prestigious 5-star hotel provides free access to its Spa and Wellness Centre, air and fi-modern function...',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      SizedBox(height: Sizes.size20),

                      Divider(color: Color(0xffEBF1F5)),
                      Center(
                        child: SectionTitle(
                          title: 'HOTEL FACILITIES',
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FacilityWidget(assetPath: AppImages.wifiIcon, title: 'Free Wifi'),
                          FacilityWidget(assetPath: AppImages.fitnessIcon, title: 'Fitness Center'),
                          FacilityWidget(assetPath: AppImages.breakfastIcon, title: 'Free Breakfast'),
                          FacilityWidget(assetPath: AppImages.kidFriendlyIcon, title: 'Kid Friendly'),
                        ],
                      ),
                      SizedBox(height: Sizes.size20),

                      Divider(color: Color(0xffEBF1F5)),
                      ContactRowWidget(
                        icon: Icons.location_on,
                        text: 'Abidjan, Cocle d\'lvoire',
                      ),
                      SizedBox(height: Sizes.xs),

                      ContactRowWidget(icon: Icons.phone, text: '(+225) 22-40-20-26'),
                      SizedBox(height: Sizes.xs),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ContactRowWidget(icon: Icons.access_time, text: 'Check-In 12 PM'),
                          ContactRowWidget(icon: Icons.access_time_filled, text: 'Checkout 11 AM'),
                        ],
                      ),
                      Divider(color: Color(0xffEBF1F5)),

                      SizedBox(height: Sizes.spaceBetweenItems),
                      InfoChipGrid(
                        chips: [
                          {'asset': AppImages.wifiIcon, 'text': 'Wifi'},
                          {'asset': AppImages.breakfastIcon, 'text': 'Breafast'},
                          {'asset': AppImages.kidFriendlyIcon, 'text': 'Kid Friendly'},
                          {'asset': AppImages.breakfastIcon, 'text': 'Breakfast'},
                          {'asset': AppImages.fitnessIcon, 'text': 'Pool'},
                          {'asset': AppImages.fitnessIcon, 'text': 'Pool'},
                        ],
                      ),
                      Divider(color: Color(0xffEBF1F5)),

                      SizedBox(height: Sizes.spaceBetweenItems),

                      SectionTitle(
                        title: 'CHECK AVAILABILITY',
                        color: AppColors.black,
                      ),
                      SizedBox(height: Sizes.size15),
                      SizedBox(height: Sizes.spaceBetweenItems),
                      CustomDatePicker(
                        hintText: 'Check In Date & Time',
                        fontSize: 14,
                        initialDate: selectedDate,
                        onDateSelected: (pickedDate) {
                          setState(() {
                            selectedDate = pickedDate;
                          });
                        },
                      ),
                      SizedBox(height: Sizes.spaceBetweenItems),
                      CustomDatePicker(
                        hintText: 'Check Out Date & Time',
                        fontSize: 14,
                        initialDate: selectedDate,
                        onDateSelected: (pickedDate) {
                          setState(() {
                            selectedDate = pickedDate;
                          });
                        },
                      ),
                      SizedBox(height: Sizes.spaceBetweenItems),
                      CustomTextField(
                        hintText: '2 Adults.  2 Children.  1 room',
                        prefixIcon: Icons.people_outline,
                        hintTextColor: AppColors.black,
                        fontSize: 14,
                      ),
                      const SizedBox(height: 18),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SectionTitle(title: 'FOOD'),
                          SectionTitle(
                            title: 'VIEW ALL',
                            color: AppColors.primary,
                          ),
                        ],
                      ),
                      SizedBox(height: Sizes.spaceBetweenItems),
                      SizedBox(
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            FoodCardWidget(
                              imageUrl: AppImages.foodOne,
                              label: 'Continental breakfast',
                            ),
                            FoodCardWidget(
                              imageUrl: AppImages.foodTwo,
                              label: 'Fried bacon and scrambled eggs',
                            ),
                            FoodCardWidget(
                              imageUrl: AppImages.foodThree,
                              label: 'Chinese seafood hot',
                            ),
                            FoodCardWidget(
                              imageUrl: AppImages.foodFour,
                              label: 'Japanese bento',
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
        ],
      ),
      bottomNavigationBar: CustomBookingBar(
        price: '\$127',
        subtitle: 'AVG/NIGHT',
        buttonText: 'BOOK NOW',
        gradient: AppColors.linerGradient3,
        onPressed: () {},
      ),
    );
  }
}


