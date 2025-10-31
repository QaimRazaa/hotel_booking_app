import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/textfield/textfield.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

import 'appbar.dart';

class FindHotelScreen extends StatefulWidget {
  const FindHotelScreen({super.key});

  @override
  State<FindHotelScreen> createState() => _FindHotelScreenState();
}

class _FindHotelScreenState extends State<FindHotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomSmallAppBar(
        title: 'Hotels',
        subtitle: 'Abidos Hotel Apartment',
        onLocationTap: () {
        },
      ),
      body: Column(
        children: [
          CustomTextField(hintText: 'Search',)
        ],
      ),
    );

  }
}
