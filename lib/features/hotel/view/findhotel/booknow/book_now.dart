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
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const TopHotelImage(),

                Padding(
                  padding: EdgeInsets.all(Sizes.defaultSpace),
                  child: CustomTabBar(
                    tabs: ['Review', 'Photo(10)', 'Near by(24)'],
                    selectedIndex: selectedTabIndex,
                    onTabSelected: (index) {
                      setState(() => selectedTabIndex = index);
                    },
                  ),
                ),

                IndexedStack(
                  index: selectedTabIndex,
                  children: [
                    // Review
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(color: const Color(0xffEBF1F5)),
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
                          const SizedBox(height: 20),

                          Divider(color: const Color(0xffEBF1F5)),
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
                          const SizedBox(height: 20),

                          Divider(color: const Color(0xffEBF1F5)),
                          const ContactRowWidget(
                            icon: Icons.location_on,
                            text: 'Abidjan, Cocle d\'lvoire',
                          ),
                          const SizedBox(height: 4),
                          const ContactRowWidget(
                            icon: Icons.phone,
                            text: '(+225) 22-40-20-26',
                          ),
                          const SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              ContactRowWidget(icon: Icons.access_time, text: 'Check-In 12 PM'),
                              ContactRowWidget(icon: Icons.access_time_filled, text: 'Checkout 11 AM'),
                            ],
                          ),
                          Divider(color: const Color(0xffEBF1F5)),

                          const SizedBox(height: 20),
                          InfoChipGrid(
                            chips: [
                              {'asset': AppImages.wifiIcon, 'text': 'Wifi'},
                              {'asset': AppImages.breakfastIcon, 'text': 'Breakfast'},
                              {'asset': AppImages.kidFriendlyIcon, 'text': 'Kid Friendly'},
                              {'asset': AppImages.breakfastIcon, 'text': 'Breakfast'},
                              {'asset': AppImages.fitnessIcon, 'text': 'Pool'},
                              {'asset': AppImages.fitnessIcon, 'text': 'Pool'},
                            ],
                          ),
                          Divider(color: const Color(0xffEBF1F5)),

                          const SizedBox(height: 20),
                          SectionTitle(title: 'CHECK AVAILABILITY', color: AppColors.black),
                          const SizedBox(height: 15),
                          CustomDatePicker(
                            hintText: 'Check In Date & Time',
                            fontSize: 14,
                            initialDate: selectedDate,
                            onDateSelected: (pickedDate) {
                              setState(() => selectedDate = pickedDate);
                            },
                          ),
                          const SizedBox(height: 16),
                          CustomDatePicker(
                            hintText: 'Check Out Date & Time',
                            fontSize: 14,
                            initialDate: selectedDate,
                            onDateSelected: (pickedDate) {
                              setState(() => selectedDate = pickedDate);
                            },
                          ),
                          const SizedBox(height: 16),
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
                          const SizedBox(height: 16),
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
                    // Photo
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: InfoChipGrid(
                        chips: [],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: const Text(
                        'Nearby Section — Add your nearby places here.',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ],
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
