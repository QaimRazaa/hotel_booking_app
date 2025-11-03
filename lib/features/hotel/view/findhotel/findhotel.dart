import 'package:flutter/material.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/widgets/amenities_sheet.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/widgets/appbar.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/widgets/filter_button.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/widgets/hotel_card.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';
import '../../../../../common/widgets/searchfield/searchField.dart';
import '../rooms/widgets/navbar.dart';

class FindHotelScreen extends StatefulWidget {
  const FindHotelScreen({super.key});

  @override
  State<FindHotelScreen> createState() => _FindHotelScreenState();
}

class _FindHotelScreenState extends State<FindHotelScreen> {
  Set<String> selectedAmenities = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomSmallAppBar(
        title: 'Hotels',
        subtitle: 'Abidos Hotel Apartment',
        onLocationTap: () {Navigator.pushNamed(context, AppRoutes.hotelLocationScreen);},
      ),
      body: Padding(
        padding: EdgeInsets.all(Sizes.defaultSpace),
        child: SingleChildScrollView(
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
              SizedBox(height: Sizes.size15),

              Column(
                children: [
                  HotelCard(
                    imageUrl: AppImages.hotelOne,
                    title: 'Heden golf',
                    rating: 3.9,
                    reviewCount: 200,
                    description:
                        'Set in landscaped gardens overlooking the ...',
                    discount: '25% OFF',
                    price: 127,
                    onBookPressed: () {Navigator.pushNamed(context, AppRoutes.bookNowScreen);},
                  ),
                  Divider(color: AppColors.lightWhite),
                  HotelCard(
                    imageUrl: AppImages.hotelFour,
                    title: 'Onomo',
                    rating: 4.3,
                    reviewCount: 150,
                    description:
                        'Adagio City Aparthotel is a joint venture ...',
                    discount: '',
                    price: 150,
                    onBookPressed: () {},
                  ),
                  Divider(color: AppColors.lightWhite),
                  HotelCard(
                    imageUrl: AppImages.hotelTwo,
                    title: 'Adagio',
                    rating: 3.6,
                    reviewCount: 50,
                    description: 'The ONOMO Hotels chain established...',
                    discount: '10% OFF',
                    price: 100,
                    onBookPressed: () {},
                  ),
                  Divider(color: AppColors.lightWhite),
                  HotelCard(
                    imageUrl: AppImages.hotelThree,
                    title: 'Sofitel',
                    rating: 3.9,
                    reviewCount: 20,
                    description: 'This understated hotel is 5 km from both...',
                    discount: '15% OFF',
                    price: 200,
                    onBookPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
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
