import 'package:flutter/material.dart';

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
          border: Border.all(color: Colors.grey.shade300),
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
            SizedBox(width: 4),
            Icon(icon, size: 18),
          ],
        ),
      ),
    );
  }
}