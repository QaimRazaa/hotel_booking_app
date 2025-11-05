import 'package:flutter/material.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/nearbytab/near_by.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/photostab/photos.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/reviewtab/reviews.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/widgets.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/tabbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../../../common/widgets/bookingnavbar/booking_nav_bar.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/device/device_utils.dart';
import '../../../viewmodel/booknow/tab_provider.dart';

class BookNowScreen extends StatefulWidget {
  const BookNowScreen({super.key});

  @override
  State<BookNowScreen> createState() => _BookNowScreenState();
}

class _BookNowScreenState extends State<BookNowScreen> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet = constraints.maxWidth >= 600;
        final horizontalPadding = isTablet ? AppSizes.width(5) : AppSizes.width(4);

        return Scaffold(
          backgroundColor: AppColors.white,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    TopHotelImage(
                      imagePath: AppImages.hotelTwo,
                      title: 'Heden Golf',
                      location: 'Abidjan, Côte d\'Ivoire',
                      rating: 8.9,
                      height: 300,
                      actionIcon: Icons.share,
                      onActionPressed: () {},
                    ),
                    // TabBar
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: AppSizes.height(2)),
                      child: Consumer<TabProvider>(
                        builder: (context, tabProvider, child) {
                          return CustomTabBar(
                            tabs: const ['Review', 'Photo(10)', 'Near by(24)'],
                            selectedIndex: tabProvider.selectedIndex,
                            onTabSelected: (index) => tabProvider.setIndex(index),
                          );
                        },
                      ),
                    ),

                    // Tab content
                    Consumer<TabProvider>(
                      builder: (context, tabProvider, child) {
                        return IndexedStack(
                          index: tabProvider.selectedIndex,
                          children: const [
                            ReviewsTab(),
                            PhotosTab(),
                            NearByTab(),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: CustomBookingBar(
            price: '\$127',
            subtitle: 'AVG/NIGHT',
            buttonText: 'BOOK NOW',
            gradient: AppColors.linerGradient3,
            onPressed: () {Navigator.pushNamed(context, AppRoutes.orderConfirmScreen);},
          ),
        );
      },
    );
  }
}
