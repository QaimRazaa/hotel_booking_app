import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/widgets.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/widgets/appbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/tabbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';
import '../../../../../common/widgets/circlerating/circle_rating_indicator.dart';
import '../../../../../common/widgets/textfield/textfield.dart';
import '../../../../../core/routes.dart';
import '../../rooms/widgets/appbar.dart';
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
                    // Review
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Sizes.defaultSpace,
                      ),
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
                              FacilityWidget(
                                assetPath: AppImages.wifiIcon,
                                title: 'Free Wifi',
                              ),
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
                          ContactRowWidget(
                            icon: Icons.location_on,
                            text: 'Abidjan, Cocle d\'lvoire',
                          ),
                          SizedBox(height: Sizes.xs),
                          ContactRowWidget(
                            icon: Icons.phone,
                            text: '(+225) 22-40-20-26',
                          ),
                          SizedBox(height: Sizes.xs),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              ContactRowWidget(
                                icon: Icons.access_time,
                                text: 'Check-In 12 PM',
                              ),
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
                              {
                                'asset': AppImages.breakfastIcon,
                                'text': 'Breakfast',
                              },
                              {
                                'asset': AppImages.kidFriendlyIcon,
                                'text': 'Kid Friendly',
                              },
                              {
                                'asset': AppImages.breakfastIcon,
                                'text': 'Breakfast',
                              },
                              {'asset': AppImages.fitnessIcon, 'text': 'Pool'},
                              {'asset': AppImages.fitnessIcon, 'text': 'Pool'},
                            ],
                          ),
                          Divider(color: AppColors.dividerColor),

                          SizedBox(height: Sizes.size15),
                          SectionTitle(
                            title: 'CHECK AVAILABILITY',
                            color: AppColors.black,
                          ),
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
                              SectionTitle(
                                title: 'VIEW ALL',
                                color: AppColors.primary,
                              ),
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
                    ),

                    Column(
                      children: [
                        Divider(color: AppColors.dividerColor),
                        Padding(
                          padding: EdgeInsets.all(Sizes.size15),
                          child: InfoChipGrid(
                            chips: [
                              {'asset': AppImages.hedenGolfHotel},
                              {'asset': AppImages.hedenGolfHotelOne},
                              {'asset': AppImages.hedenGolfHotelTwo},
                              {'asset': AppImages.hedenGolfHotelThree},
                              {'asset': AppImages.hedenGolfHotelFour},
                              {'asset': AppImages.hedenGolfHotelFive},
                              {'asset': AppImages.hedenGolfHotelSix},
                              {'asset': AppImages.hedenGolfHotelSeven},
                              {'asset': AppImages.hedenGolfHotelEight},
                              {'asset': AppImages.hedenGolfHotelNine},
                              {'asset': AppImages.hedenGolfHotelTen},
                              {'asset': AppImages.hedenGolfHotelEleven},
                            ],
                            crossAxisCount: 3,
                            iconSize: 125,
                            childAspectRatio: 1.0,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                            horizontalPadding: 2,
                            verticalPadding: 2,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Divider(color: AppColors.dividerColor),
                        Padding(
                          padding: EdgeInsets.all(Sizes.size15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SectionTitle(
                                title: 'LOCATION OVER VIEW',
                                color: AppColors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                              SizedBox(height: Sizes.sm),
                              const Text(
                                'Set in landscaped gardens overlooking the Ébrié lagoon, this upscale hotel featuring contemporary local art and architectural touches is 3 km from Mosquée de la riviéra and 17 km from Banco National Park.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: Sizes.size15),
                              Divider(color: AppColors.dividerColor),
                              SizedBox(height: Sizes.size15),
                              SectionTitle(
                                title: 'HOTEL LOCATION SCORE',
                                color: AppColors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                              SizedBox(height: Sizes.sm),
                              Padding(
                                padding: EdgeInsets.all(Sizes.size15),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircularRatingIndicator(
                                          rating: 3.9,
                                          maxRating: 5.0,
                                          size: 90,
                                          activeColor: Colors.green,
                                          inactiveColor: Colors.grey,
                                          strokeWidth: 7,
                                          textStyle: GoogleFonts.roboto(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: Sizes.size20),
                                        Text(
                                          'Good location overall for sightseeing \n recreation, and getting around',
                                          style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w300,
                                            color: AppColors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: Sizes.size20),
                                    ImageTextRow(
                                      assetPath: AppImages.cameraIcon,
                                      text:
                                          '3.8 Great for promximity things to do.',
                                    ),
                                    SizedBox(height: Sizes.size15),
                                    ImageTextRow(
                                      assetPath: AppImages.subwayIcon,
                                      text: '0.0 No nearby transit options.',
                                    ),
                                    SizedBox(height: Sizes.size15),
                                    ImageTextRow(
                                      assetPath: AppImages.planeIcon,
                                      text: '2.2 OK for Airport access.',
                                    ),
                                    SizedBox(height: Sizes.size20),
                                    Text(
                                      'Scores are calculated based on data from google Maps and evaluate the hotel’s proximity to nearby things to do, transportation and airport.',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(height: Sizes.size20),
                                    SectionTitle(
                                      title: "Abidjan, Côte d'Ivoire",
                                      subTitle: 'Directions',
                                      subTitleColor: AppColors.primary,
                                    ),
                                    SizedBox(height: Sizes.size15),
                                    Divider(color: AppColors.dividerColor),
                                    SizedBox(height: Sizes.size15),
                                    HotelCard(
                                      imageUrl: AppImages.placeFour,
                                      title: "St. Paul's Cathedral, Abidjan",
                                      rating: 3.9,
                                      reviewCount: 200,
                                      description:
                                      'This contemporary, landmark cathedral features unique architecture, regular mass services ',
                                      discount: '',
                                      distance: '2.5 km',
                                      onBookPressed: () {},
                                      minutes: '6 mins',
                                    ),
                                    SizedBox(height: Sizes.size15),
                                    Divider(color: AppColors.dividerColor),
                                    SizedBox(height: Sizes.size15),
                                    HotelCard(
                                      imageUrl: AppImages.placeFive,
                                      title: 'Banco National Park',
                                      rating: 4.3,
                                      reviewCount: 180,
                                      description: 'Tranquil old-growth forest in the heart of \n Abidjan featuring a variety of plants & animals.',
                                      distance: '2.5 km',
                                      minutes: '6 mins', discount: '',
                                    ),


                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
