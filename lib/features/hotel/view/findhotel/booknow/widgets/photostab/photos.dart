import 'package:flutter/material.dart';

import '../../../../../../../common/widgets/infogrid/info_gird.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/images.dart';
import '../../../../../../../utils/constants/sizes.dart';

class PhotosTab extends StatelessWidget {
  const PhotosTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            iconSize: 122,
            childAspectRatio: 1.0,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            horizontalPadding: 2,
            verticalPadding: 2,
          ),
        ),
      ],
    );
  }
}
