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
                Stack(
                  children: [
                    Image.asset(
                      AppImages.hotelTwo,
                      height: 280,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 280,
                      color: Colors.black.withOpacity(0.2),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: CustomAppBar(
                        title: 'Heden Golf',
                        titleColor: AppColors.white,
                        showBackArrow: true,
                        actions: [
                          IconButton(
                            icon: const Icon(
                              Icons.share,
                              color: AppColors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      bottom: 12,
                      left: 16,
                      right: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '8.9',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_on,
                                size: 18,
                                color: AppColors.white,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Abidjan, Cocle d\'Ivoire',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.all(Sizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTabBar(
                        tabs: ['Review', 'Photo(10)', 'Near by(24)'],
                      ),
                      const SizedBox(height: 20),
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
                      const SizedBox(height: 20),

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
                      const SizedBox(height: 20),

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

                      const SizedBox(height: 12),
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

                      const SizedBox(height: 15),

                      SectionTitle(
                        title: 'CHECK AVAILABILITY',
                        color: AppColors.black,
                      ),
                      SizedBox(height: Sizes.size15),
                      const SizedBox(height: 12),
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
                      const SizedBox(height: 12),
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
                      const SizedBox(height: 12),
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
                          SectionTitle(title: 'VIEW ALL', color: AppColors.primary,),
                        ],
                      ),
                      const SizedBox(height: 12),
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
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Bottom Booking Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        '\$127',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'AVG/NIGHT',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: CustomElevatedButton(
                      text: 'BOOKING NOW',
                      textColor: AppColors.white,
                      onPressed: () {},
                      gradient: AppColors.linerGradient3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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

  Widget _buildInfoChip(String assetPath, String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Image.asset(
            assetPath,
            width: 20,
            height: 20,
            color: AppColors.primary,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(fontSize: 11)),
        ],
      ),
    );
  }

  Widget _buildDropdownField(String hint) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.calendar_today, size: 16, color: AppColors.primary),
              const SizedBox(width: 10),
              Text(hint, style: const TextStyle(fontSize: 13)),
            ],
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
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
            child:Image.asset(
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
