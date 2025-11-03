import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utils.dart';

Widget PlacesAndHotels(String title, List<Map<String, String>> items) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: AppSizes.font(1.75), // 14
              color: Colors.grey.shade600,
              letterSpacing: 0.5,
            ),
          ),
          Text(
            'VIEW ALL',
            style: TextStyle(
              fontSize: AppSizes.font(1.75), // 14
              color: AppColors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      SizedBox(height: AppSizes.height(2.5)), // 20
      SizedBox(
        height: AppSizes.height(12.5), // 100
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
    width: AppSizes.width(20), // 80
    margin: EdgeInsets.only(right: AppSizes.width(3)), // 12
    child: Column(
      children: [
        Container(
          height: AppSizes.height(8.75), // 70
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.width(2)), // 8
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: AppSizes.height(0.5)), // 4
        Text(
          name,
          style: TextStyle(
            fontSize: AppSizes.font(1.5), // 12
            color: AppColors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
