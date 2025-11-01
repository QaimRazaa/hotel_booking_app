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
                          _buildFacility(AppImages.wifiIcon, 'Free Wifi'),
                          _buildFacility(
                            AppImages.fitnessIcon,
                            'Fitness Center',
                          ),
                          _buildFacility(
                            AppImages.breakfastIcon,
                            'Free Breakfast',
                          ),
                          _buildFacility(
                            AppImages.kidFriendlyIcon,
                            'Kid Friendly',
                          ),
                        ],
                      ),
                      SizedBox(height: Sizes.size20),

                      Divider(color: Color(0xffEBF1F5)),
                      _buildContactRow(
                        Icons.location_on,
                        'Abidjan, Cocle d\'lvoire',
                      ),
                      SizedBox(height: Sizes.xs),

                      _buildContactRow(Icons.phone, '(+225) 22-40-20-26'),
                      SizedBox(height: Sizes.xs),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildContactRow(Icons.access_time, 'Check-In 12 PM'),
                          _buildContactRow(
                            Icons.access_time_filled,
                            'Checkout 11 AM',
                          ),
                        ],
                      ),
                      Divider(color: Color(0xffEBF1F5)),

                      SizedBox(height: Sizes.spaceBetweenItems),
                      InfoChipGrid(
                        chips: [
                          {'asset': AppImages.wifiIcon, 'text': 'Wifi'},
                          {
                            'asset': AppImages.breakfastIcon,
                            'text': 'Breafast',
                          },
                          {
                            'asset': AppImages.kidFriendlyIcon,
                            'text': 'Kid Friendly',
                          },
                          {
                            'asset': AppImages.breakfastIcon,
                            'text': 'Breakfast',
                          },
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
                            _buildFoodCard(
                              AppImages.foodOne,
                              'Continental breakfast',
                            ),
                            _buildFoodCard(
                              AppImages.foodTwo,
                              'Fried bacon and scrambled eggs',
                            ),
                            _buildFoodCard(
                              AppImages.foodThree,
                              'Chinese seafood hot',
                            ),
                            _buildFoodCard(
                              AppImages.foodFour,
                              'Japanese bento',
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

  Widget _buildFacility(String assetPath, String title) {
    return Column(
      children: [
        Image.asset(
          assetPath,
          width: 40,
          height: 40,
          color: AppColors.primary,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }

  Widget _buildContactRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, size: 18, color: AppColors.primary),
          const SizedBox(width: 12),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodCard(String imageUrl, String label) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageUrl,
              height: 80,
              width: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  Container(height: 80, width: 100, color: Colors.grey[300]),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 12, color: Colors.black),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
