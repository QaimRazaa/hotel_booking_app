
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

import '../../../viewmodel/navigation/navigation_provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (context, navProvider, child) {
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
                isActive: navProvider.currentRoute == AppRoutes.roomScreen,
                onTap: () {
                  navProvider.setCurrentRoute(AppRoutes.roomScreen);
                  Navigator.pushNamed(context, AppRoutes.roomScreen);
                },
              ),
              _NavItem(
                icon: CupertinoIcons.car,
                label: 'Car booking',
                isActive: navProvider.currentRoute == AppRoutes.bookACar,
                onTap: () {
                  navProvider.setCurrentRoute(AppRoutes.bookACar);
                  Navigator.pushNamed(context, AppRoutes.bookACar);
                },
              ),
              _NavItem(
                icon: CupertinoIcons.car_detailed,
                label: 'Car Washing',
                isActive: navProvider.currentRoute == 'carWashing',
                onTap: () {
                  navProvider.setCurrentRoute('carWashing');
                },
              ),
              _NavItem(
                icon: CupertinoIcons.profile_circled,
                label: 'My profile',
                isActive: navProvider.currentRoute == AppRoutes.myProfileScreen,
                onTap: () {
                  navProvider.setCurrentRoute(AppRoutes.myProfileScreen);
                  Navigator.pushNamed(context, AppRoutes.myProfileScreen);
                },
              ),
              _NavItem(
                icon: CupertinoIcons.settings,
                label: 'Settings',
                isActive: navProvider.currentRoute == AppRoutes.settingsScreen,
                onTap: () {
                  navProvider.setCurrentRoute(AppRoutes.settingsScreen);
                  Navigator.pushNamed(context, AppRoutes.settingsScreen);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.isActive,
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
          Icon(
            icon,
            color: isActive ? Colors.white : AppColors.black.withOpacity(0.7),
            size: 25,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : AppColors.black.withOpacity(0.7),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
