import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/foodmenu/widgets/food_catagories.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/foodmenu/widgets/nav_bar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';

import '../../../../../../core/routes.dart';
import '../../../../../../utils/constants/images.dart';
import '../../../rooms/widgets/appbar.dart';
import '../../widgets/hotel_card.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({super.key});

  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                onBackPressed: () {Navigator.pop(context);},
                title: 'Food',
                showBackArrow: true,
                showActions: false,
              ),
              Padding(
                padding: AppSizes.paddingSymmetric(horizontal: 6),
                child: Column(
                  children: [
                    FoodCategories(),
                    HotelCard(
                      imageUrl: AppImages.foodOne,
                      buttonText: 'Add',
                      title: 'Bagels with turkey and bacon',
                      rating: 3.9,
                      reviewCount: 200,
                      description: 'neque, amet blandit tincidunt vulputate ',
                      discount: '25% OFF',
                      price: 34,
                      onBookPressed: () {
                        Navigator.pushNamed(context, AppRoutes.foodDetail);
                      },
                    ),
                    Divider(color: AppColors.lightWhite),
                    HotelCard(
                      imageUrl: AppImages.foodTwo,
                      title: 'gourmet croissant, scrambled eggs..',
                      buttonText: 'Add',
                      rating: 3.9,
                      reviewCount: 200,
                      description: 'neque, amet blandit tincidunt vulputate ',
                      discount: '15% OFF',
                      price: 12,
                      onBookPressed: () {},
                    ),
                    Divider(color: AppColors.lightWhite),
                    HotelCard(
                      imageUrl: AppImages.foodThree,
                      title: 'sandwich',
                      buttonText: 'Add',
                      rating: 3.9,
                      reviewCount: 200,
                      description: 'neque, amet blandit tincidunt vulputate ',
                      discount: '10% OFF',
                      price: 22,
                      onBookPressed: () {},
                    ),
                    Divider(color: AppColors.lightWhite),
                    HotelCard(
                      imageUrl: AppImages.foodFour,
                      title: 'crispy mozza burger',
                      buttonText: 'Add',
                      rating: 3.9,
                      reviewCount: 200,
                      description: 'neque, amet blandit tincidunt vulputate ',
                      discount: '25% OFF',
                      price: 54,
                      onBookPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FoodNavBar(
        price: 'Total items Added : 1',
        subtitle: 'Total price : \$15',
        gradient: AppColors.linerGradient3,
        buttonText: 'Add',
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.foodCart);
        },
      ),
    );
  }
}
