import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/device/device_utils.dart';

class VerticalImageAndText extends StatelessWidget {
  const VerticalImageAndText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColors.white,
    this.backGroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backGroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: AppSizes.width(3)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: AppSizes.width(15),
              height: AppSizes.width(15),
              decoration: BoxDecoration(
                color: backGroundColor ?? AppColors.lighterGrey,
                borderRadius: BorderRadius.circular(AppSizes.width(50)),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  width: AppSizes.width(8),
                  height: AppSizes.width(8),

                  fit: BoxFit.cover,
                  color: AppColors.lightGrey,
                ),
              ),
            ),
            SizedBox(height: AppSizes.height(0.8)),
            SizedBox(
              width: AppSizes.width(13),
              child: Text(
                title,
                textAlign: TextAlign.center, // center text inside box
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: AppColors.black),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
