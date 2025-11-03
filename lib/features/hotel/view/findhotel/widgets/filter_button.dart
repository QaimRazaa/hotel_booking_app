import 'package:flutter/material.dart';

import '../../../../../utils/device/device_utils.dart';

class FilterButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const FilterButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSizes.width(2)),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.width(1),
          vertical: AppSizes.height(.5),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(AppSizes.width(2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: AppSizes.font(1.5),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: AppSizes.width(1.5)),
            Icon(icon, size: AppSizes.icon(2)),
          ],
        ),
      ),
    );
  }
}
