import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        gradient: AppColors.linerGradient3,
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _NavItem(icon: CupertinoIcons.building_2_fill, label: 'Rooms'),
          _NavItem(icon: CupertinoIcons.car, label: 'Car booking'),
          _NavItem(icon: CupertinoIcons.car_detailed, label: 'Car renting'),
          _NavItem(icon: CupertinoIcons.profile_circled, label: 'My profile'),
          _NavItem(icon: CupertinoIcons.settings, label: 'Settings'),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _NavItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: AppColors.black.withOpacity(0.7), size: 25),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: AppColors.black.withOpacity(0.7),
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
