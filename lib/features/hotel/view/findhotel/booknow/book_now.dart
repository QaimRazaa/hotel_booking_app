import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/nearbytab/near_by.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/photostab/photos.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/reviewtab/reviews.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/widgets.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/tabbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';
import '../../../../../common/widgets/bookingnavbar/booking_nav_bar.dart';
import '../../../../../common/widgets/circlerating/circle_rating_indicator.dart';
import '../../../../../common/widgets/imagetextrow/image_text_row.dart';
import '../../../../../common/widgets/infogrid/info_gird.dart';
import '../../../../../common/widgets/sectionheading/section_heading.dart';
import '../../../../../common/widgets/textfield/textfield.dart';
import '../../rooms/widgets/datepicker.dart';
import '../widgets/hotel_card.dart';

class BookNowScreen extends StatefulWidget {
  const BookNowScreen({super.key});

  @override
  State<BookNowScreen> createState() => _BookNowScreenState();
}

class _BookNowScreenState extends State<BookNowScreen> {
  DateTime? selectedDate;
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const TopHotelImage(),

                Padding(
                  padding: EdgeInsets.all(Sizes.defaultSpace),
                  child: CustomTabBar(
                    tabs: ['Review', 'Photo(10)', 'Near by(24)'],
                    selectedIndex: selectedTabIndex,
                    onTabSelected: (index) {
                      setState(() => selectedTabIndex = index);
                    },
                  ),
                ),

                IndexedStack(
                  index: selectedTabIndex,
                  children: [
                    ReviewsTab(),

                    PhotosTab(),

                    NearByTab(),
                  ],
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
        onPressed: () {},
      ),
    );
  }
}


