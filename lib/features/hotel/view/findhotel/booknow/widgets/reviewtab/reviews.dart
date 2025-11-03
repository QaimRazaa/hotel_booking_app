import 'package:flutter/material.dart';
import '../../../../../../../common/widgets/infogrid/info_gird.dart';
import '../../../../../../../common/widgets/sectionheading/section_heading.dart';
import '../../../../../../../common/widgets/textfield/textfield.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/images.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../../../rooms/widgets/datepicker.dart';
import '../widgets.dart';

class ReviewsTab extends StatefulWidget {
  const ReviewsTab({super.key});

  @override
  State<ReviewsTab> createState() => _ReviewsTabState();
}

class _ReviewsTabState extends State<ReviewsTab> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: AppColors.dividerColor),
          Center(
            child: SectionTitle(
              title: 'HOTEL DESCRIPTION',
              color: AppColors.black,
              fontSize: 15,
            ),
          ),
          SizedBox(height: Sizes.sm),
          const Text(
            'Set in landscaped gardens overlooking the lake, this prestigious 5-star hotel provides free access to its Spa and Wellness Centre, air and fi-modern function...',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: Sizes.size15),

          Divider(color: AppColors.dividerColor),
          Center(
            child: SectionTitle(
              title: 'HOTEL FACILITIES',
              color: AppColors.black,
              fontSize: 15,
            ),
          ),
          SizedBox(height: Sizes.size15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FacilityWidget(assetPath: AppImages.wifiIcon, title: 'Free Wifi'),
              FacilityWidget(
                assetPath: AppImages.fitnessIcon,
                title: 'Fitness Center',
              ),
              FacilityWidget(
                assetPath: AppImages.breakfastIcon,
                title: 'Free Breakfast',
              ),
              FacilityWidget(
                assetPath: AppImages.kidFriendlyIcon,
                title: 'Kid Friendly',
              ),
            ],
          ),
          SizedBox(height: Sizes.size15),

          Divider(color: AppColors.dividerColor),
          const ContactRowWidget(
            icon: Icons.location_on,
            text: 'Abidjan, Cocle d\'lvoire',
          ),
          SizedBox(height: Sizes.xs),
          const ContactRowWidget(icon: Icons.phone, text: '(+225) 22-40-20-26'),
          SizedBox(height: Sizes.xs),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContactRowWidget(icon: Icons.access_time, text: 'Check-In 12 PM'),
              ContactRowWidget(
                icon: Icons.access_time_filled,
                text: 'Checkout 11 AM',
              ),
            ],
          ),
          Divider(color: AppColors.dividerColor),

          SizedBox(height: Sizes.size15),
          InfoChipGrid(
            chips: [
              {'asset': AppImages.wifiIcon, 'text': 'Wifi'},
              {'asset': AppImages.breakfastIcon, 'text': 'Breakfast'},
              {'asset': AppImages.kidFriendlyIcon, 'text': 'Kid Friendly'},
              {'asset': AppImages.breakfastIcon, 'text': 'Breakfast'},
              {'asset': AppImages.fitnessIcon, 'text': 'Pool'},
              {'asset': AppImages.fitnessIcon, 'text': 'Pool'},
            ],
          ),
          Divider(color: AppColors.dividerColor),

          SizedBox(height: Sizes.size15),
          SectionTitle(title: 'CHECK AVAILABILITY', color: AppColors.black),
          SizedBox(height: Sizes.size15),
          CustomDatePicker(
            hintText: 'Check In Date & Time',
            fontSize: 14,
            initialDate: selectedDate,
            onDateSelected: (pickedDate) {
              setState(() => selectedDate = pickedDate);
            },
          ),
          SizedBox(height: Sizes.size15),
          CustomDatePicker(
            hintText: 'Check Out Date & Time',
            fontSize: 14,
            initialDate: selectedDate,
            onDateSelected: (pickedDate) {
              setState(() => selectedDate = pickedDate);
            },
          ),
          SizedBox(height: Sizes.size15),
          CustomTextField(
            hintText: '2 Adults.  2 Children.  1 room',
            prefixIcon: Icons.people_outline,
            hintTextColor: AppColors.black,
            fontSize: 14,
          ),
          SizedBox(height: Sizes.size15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SectionTitle(title: 'FOOD'),
              SectionTitle(title: 'VIEW ALL', color: AppColors.primary),
            ],
          ),
          SizedBox(height: Sizes.size15),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FoodCardWidget(
                  imageUrl: AppImages.foodOne,
                  label: 'Continental breakfast',
                ),
                FoodCardWidget(
                  imageUrl: AppImages.foodTwo,
                  label: 'Fried bacon and scrambled eggs',
                ),
                FoodCardWidget(
                  imageUrl: AppImages.foodThree,
                  label: 'Chinese seafood hot',
                ),
                FoodCardWidget(
                  imageUrl: AppImages.foodFour,
                  label: 'Japanese bento',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
