import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/common/widgets/textfield/textfield.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/amenity_row.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/navbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/tabbar.dart';
import 'package:hotel_booking_app/navigation_bar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:iconsax/iconsax.dart';

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
                      CustomTextField(
                        hintText: 'Where do you want',
                        prefixIcon: Icons.location_on,
                        hintTextColor: AppColors.black,
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        hintText: 'Checkin date & time',
                        prefixIcon: Icons.calendar_today,
                        hintTextColor: AppColors.black,
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        hintText: 'Checkout date & time',
                        prefixIcon: Icons.calendar_today,
                        hintTextColor: AppColors.black,
                      ),
                      const SizedBox(height: 12),
                      CustomTextField(
                        hintText: '0 Adults.  0 Children.  0 room',
                        prefixIcon: Icons.people_outline,
                        hintTextColor: AppColors.black,
                      ),
                      const SizedBox(height: 20),
                      AmenityRow(),
                      const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: CustomElevatedButton(
                        text: 'Search',
                        gradient: AppColors.linerGradient2,
                        onPressed: () {},
                        textColor: AppColors.white,
                        borderRadius:12 ,
                      ),
                    ),
                      const SizedBox(height: 24),
                      _buildSection('BEST PLACES', [
                        {'name': 'Ivory Coast', 'image': 'assets/images/room1.jpg'},
                        {'name': 'Senegal', 'image': 'assets/images/room2.jpg'},
                        {'name': 'Ville', 'image': 'assets/images/room3.jpg'},
                      ]),

                      const SizedBox(height: 20),
                      Divider(),
                      const SizedBox(height: 20),
                      _buildSection('BEST HOTELS', [
                        {'name': 'Headen Golf', 'image': AppImages.ivory},
                        {'name': 'Onomo', 'image': 'assets/images/room2.jpg'},
                        {'name': 'Adagio', 'image': 'assets/images/room3.jpg'},
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


  Widget _buildSection(String title, List<Map<String, String>> items) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
                letterSpacing: 0.5,
              ),
            ),
            Text(
              'VIEW ALL',
              style: TextStyle(
                fontSize: 14,
                color: AppColors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (ctx, i) => _buildCard(
              name: items[i]['name']!,
              image: items[i]['image']!,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard({required String name, required String image}) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style:  TextStyle(fontSize: 12, color: AppColors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

}

