import 'package:flutter/cupertino.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/personalisation/view/myprofile/profile.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

import '../../../../personalisation/view/myprofile/profile.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        gradient: AppColors.linerGradient3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            icon: CupertinoIcons.building_2_fill,
            label: 'Rooms',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.roomScreen);
            },
          ),
          _NavItem(
            icon: CupertinoIcons.car,
            label: 'Car booking',
            onTap: () {},
          ),
          _NavItem(
            icon: CupertinoIcons.car_detailed,
            label: 'Car Washing ',
            onTap: () {},
          ),
          _NavItem(
            icon: CupertinoIcons.profile_circled,
            label: 'My profile',
            onTap: () {Navigator.pushNamed(context, AppRoutes.myProfileScreen);},
          ),
          _NavItem(
            icon: CupertinoIcons.settings,
            label: 'Settings',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
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
      ),
    );
  }
}
