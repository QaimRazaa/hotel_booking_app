import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/small_elevated_button.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../../../utils/device/device_utils.dart';
import '../../../viewmodel/amenity_provider.dart';

class AmenitiesBottomSheet extends StatelessWidget {
  const AmenitiesBottomSheet({super.key});

  static void show(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Amenities',
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (_, __, ___) => Align(
        alignment: Alignment.topCenter,
        child: const AmenitiesBottomSheet(),
      ),
      transitionBuilder: (_, animation, __, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: Offset.zero,
          ).animate(
              CurvedAnimation(parent: animation, curve: Curves.easeOut)),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double tileWidth = (AppSizes.screenWidth - AppSizes.width(10) * 2 - AppSizes.width(3)) / 2;

    final List<Map<String, dynamic>> amenities = [
      {'icon': Icons.wifi, 'label': 'Free Wi-Fi'},
      {'icon': Icons.fitness_center, 'label': 'Fitness Center'},
      {'icon': Icons.free_breakfast, 'label': 'Free Breakfast'},
      {'icon': Icons.child_care, 'label': 'Kid Friendly'},
      {'icon': Icons.local_parking, 'label': 'Free Parking'},
      {'icon': Icons.pets, 'label': 'Pet Friendly'},
      {'icon': Icons.ac_unit, 'label': 'Air Conditioned'},
      {'icon': Icons.pool, 'label': 'Pool'},
      {'icon': Icons.local_bar, 'label': 'Bar'},
      {'icon': Icons.restaurant, 'label': 'Restaurant'},
    ];

    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.only(top: AppSizes.height(15)),
        padding: EdgeInsets.all(AppSizes.width(5)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(AppSizes.width(5)),
              bottom: Radius.circular(AppSizes.width(5))),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5)),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Amenities',
              style: TextStyle(
                fontSize: AppSizes.font(2.2),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: AppSizes.height(2)),
            Wrap(
              spacing: AppSizes.width(3),
              runSpacing: AppSizes.height(1.5),
              children: amenities.map((amenity) {
                return SizedBox(
                  width: tileWidth,
                  child: _AmenityTile(
                    icon: amenity['icon'],
                    label: amenity['label'],
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: AppSizes.height(2)),
            Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: 'Clear',
                    borderRadius: AppSizes.width(2),
                    textColor: AppColors.primary,
                    onPressed: () {
                      context.read<AmenitiesProvider>().clear();
                    },
                  ),
                ),
                SizedBox(width: AppSizes.width(3)),
                Expanded(
                  child: SmallElevatedButton(
                    gradient: AppColors.linerGradient3,
                    text: 'Apply',
                    textColor: AppColors.white,
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _AmenityTile extends StatelessWidget {
  final IconData icon;
  final String label;

  const _AmenityTile({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final isSelected = context
        .watch<AmenitiesProvider>()
        .selectedAmenities
        .contains(label);

    return InkWell(
      onTap: () => context.read<AmenitiesProvider>().toggle(label),
      borderRadius: BorderRadius.circular(AppSizes.width(3)),
      child: Container(
        padding: EdgeInsets.all(AppSizes.width(2)),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          border: Border.all(color: AppColors.primary, width: 1.5),
          borderRadius: BorderRadius.circular(AppSizes.width(3)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: AppSizes.height(5), color: isSelected ? Colors.white : AppColors.primary),
            SizedBox(height: AppSizes.height(0.5)),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: AppSizes.font(1.5),
                color: isSelected ? Colors.white : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
