import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

Widget PlacesAndHotels(String title, List<Map<String, String>> items) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade600,
              letterSpacing: 0.5,
            ),
          ),
          Text(
            'VIEW ALL',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      SizedBox(
        height: 100,
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
    width: 80,
    margin: const EdgeInsets.only(right: 12),
    child: Column(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          name,
          style:  TextStyle(fontSize: 12, color: AppColors.black),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}