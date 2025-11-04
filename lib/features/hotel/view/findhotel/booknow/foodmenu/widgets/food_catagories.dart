import 'package:flutter/material.dart';
import '../../../../../../../common/widgets/verticalimagetext/vertical_image_text.dart';
import '../../../../../../../utils/constants/images.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({super.key});

  @override
  Widget build(BuildContext context) {
    // List of category titles
    final List<String> titles = [
      'Breakfast',
      'Chinese',
      'Burger',
      'Side Items',
      'Salads',
    ];

    final List<String> images = [
      AppImages.breakfastIconTwo,
      AppImages.chineseIcon,
      AppImages.hamburgerIcon,
      AppImages.nuggetsIcon,
      AppImages.saladIcon,
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return VerticalImageAndText(
            image: images[index],
            title: titles[index],
            onTap: () {},
          );
        },
      ),
    );
  }
}
