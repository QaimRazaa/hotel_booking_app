import 'package:flutter/material.dart';
import '../../../../../utils/device/device_utils.dart';

Widget AmenityRow() {
  return Row(
    children: [
      Icon(
        Icons.ac_unit,
        size: 20,
        color: Colors.grey.shade400,
      ),
      SizedBox(width: AppSizes.width(2)),
      Text(
        'Fan',
        style: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 16,
        ),
      ),
      SizedBox(width: AppSizes.width(6)),
      Icon(
        Icons.circle,
        size: 10,
        color: Colors.blue,
      ),
      SizedBox(width: AppSizes.width(2)),
      Text(
        'Air conditioned',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    ],
  );
}
