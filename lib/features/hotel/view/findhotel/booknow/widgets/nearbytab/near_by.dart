import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../../common/widgets/circlerating/circle_rating_indicator.dart';
import '../../../../../../../common/widgets/imagetextrow/image_text_row.dart';
import '../../../../../../../common/widgets/sectionheading/section_heading.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/images.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../../widgets/hotel_card.dart';

class NearByTab extends StatelessWidget {
  const NearByTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
