import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

class FilterButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const FilterButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: Sizes.xs),
            Icon(icon, size: 18),
          ],
        ),
      ),
    );
  }
}