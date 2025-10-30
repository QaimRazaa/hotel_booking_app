import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/common/widgets/textfield/textfield.dart';
import 'package:hotel_booking_app/navigation_bar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class RoomsScreen extends StatefulWidget {
  const RoomsScreen({super.key});

  @override
  State<RoomsScreen> createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      _buildToggleButtons(),
                      const SizedBox(height: 20),
                      CustomTextField(hintText: 'Where do you want', prefixIcon: Icons.location_on,),
                      const SizedBox(height: 12),
                      CustomTextField(hintText: 'Checkin date & time',prefixIcon: Icons.calendar_today, ),
                      const SizedBox(height: 12),
                      CustomTextField(hintText: 'Checkout date & time',prefixIcon: Icons.calendar_today, ),
                      const SizedBox(height: 12),
                      CustomTextField(hintText: '0 Adults.  0 Children.  0 room',prefixIcon:  Icons.people_outline ),
                      const SizedBox(height: 20),
                      _buildAmenityRow(),
                      const SizedBox(height: 20),
                      _buildSearchButton(),
                      const SizedBox(height: 24),
                      _buildSection('BEST PLACES', ['Ivory Coast', 'Senegal', 'Ville', 'Lage']),
                      const SizedBox(height: 20),
                      _buildSection('BEST HOTELS', ['Heden golf', 'Onomo', 'Adagio', 'Soffit']),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget CustomAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Find room', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          Row(
            children: [
              _buildChip('Stay', false),
              const SizedBox(width: 8),
              _buildChip('Pass', true),
              const SizedBox(width: 8),
              const Icon(Icons.filter_list, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? Colors.green : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(label, style: TextStyle(color: selected ? Colors.white : Colors.black, fontSize: 12)),
    );
  }

  Widget _buildToggleButtons() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(child: _buildTabButton('Hotels', 0)),
          Expanded(child: _buildTabButton('Villas', 1)),
        ],
      ),
    );
  }

  Widget _buildTabButton(String text, int index) {
    final selected = _selectedTab == index;
    return GestureDetector(
      onTap: () => setState(() => _selectedTab = index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: selected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: selected ? Colors.white : Colors.black)),
      ),
    );
  }

  Widget _buildInputField(String hint, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.blue),
          const SizedBox(width: 12),
          Expanded(child: Text(hint, style: TextStyle(color: Colors.grey.shade600))),
          Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade600),
        ],
      ),
    );
  }

  Widget _buildAmenityRow() {
    return Row(
      children: [
        Icon(Icons.ac_unit, size: 20, color: Colors.grey.shade400),
        const SizedBox(width: 8),
        Text('Fan', style: TextStyle(color: Colors.grey.shade400)),
        const SizedBox(width: 24),
        const Icon(Icons.circle, size: 10, color: Colors.blue),
        const SizedBox(width: 8),
        const Text('Air conditioned', style: TextStyle(color: Colors.black)),
      ],
    );
  }

  Widget _buildSearchButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: const Text('Search', style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }

  Widget _buildSection(String title, List<String> items) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontSize: 12, color: Colors.grey.shade600, letterSpacing: 0.5)),
            Text('VIEW ALL', style: TextStyle(fontSize: 12, color: Colors.blue, fontWeight: FontWeight.w500)),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (ctx, i) => _buildCard(items[i]),
          ),
        ),
      ],
    );
  }

  Widget _buildCard(String name) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(height: 4),
          Text(name, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.hotel, 'Rooms'),
          _buildNavItem(Icons.directions_car, 'Car booking'),
          _buildNavItem(Icons.car_rental, 'Car renting'),
          _buildNavItem(Icons.person, 'My profile'),
          _buildNavItem(Icons.settings, 'Settings'),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white, size: 24),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 10)),
      ],
    );
  }
}




