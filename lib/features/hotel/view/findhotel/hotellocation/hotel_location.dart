import 'package:flutter/material.dart';

import '../../../../../common/widgets/searchfield/searchField.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../rooms/widgets/navbar.dart';
import '../widgets/amenities_sheet.dart';
import '../widgets/appbar.dart';
import '../widgets/filter_button.dart';
import '../widgets/hotel_card.dart';

class HotelLocationScreen extends StatefulWidget {
  const HotelLocationScreen({super.key});

  @override
  State<HotelLocationScreen> createState() => _HotelLocationScreenState();
}

class _HotelLocationScreenState extends State<HotelLocationScreen> {
  Set<String> selectedAmenities = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomSmallAppBar(
        title: 'Hotels',
        subtitle: 'Abidos Hotel Apartment',
        onLocationTap: () {},
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              children: [
                CustomSearchField(
                  hintText: 'Search',
                  prefixIcon: Icons.search,
                  onChanged: (query) {},
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: FilterButton(
                        label: 'Amenities',
                        icon: Icons.keyboard_arrow_down,
                        onTap: () => _showAmenitiesSheet(),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: FilterButton(
                        label: 'Filter by',
                        icon: Icons.keyboard_arrow_down,
                        onTap: () {},
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: FilterButton(
                        label: 'Sort by',
                        icon: Icons.keyboard_arrow_down,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    AppImages.map,
                    fit: BoxFit.cover,
                  ),
                ),

                Center(
                  child: IntrinsicWidth(
                    child: IntrinsicHeight(
                      child: HotelCard(
                        imageUrl: AppImages.hotelFour,
                        title: 'Onomo',
                        rating: 4.3,
                        reviewCount: 150,
                        description: 'Adagio City Aparthotel is a joint venture ...',
                        discount: '',
                        price: 150,
                        onBookPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )


        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  void _showAmenitiesSheet() {
    AmenitiesBottomSheet.show(
      context,
      selectedAmenities: selectedAmenities,
      onUpdate: () {
        setState(() {});
      },
    );
  }
}
