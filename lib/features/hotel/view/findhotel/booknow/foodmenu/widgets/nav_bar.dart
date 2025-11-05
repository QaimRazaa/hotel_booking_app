import 'package:flutter/material.dart';
import '../../../../../../../common/widgets/elevatedbutton/elevated_button.dart';
import '../../../../../../../core/routes.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/device/device_utils.dart';

class FoodNavBar extends StatelessWidget {
  final String price;
  final String subtitle;
  final String buttonText;
  final VoidCallback onPressed;
  final Gradient? gradient;

  const FoodNavBar({
    super.key,
    required this.price,
    required this.subtitle,
    required this.buttonText,
    required this.onPressed,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.paddingAll(4),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: AppSizes.width(2.5),
            offset: Offset(0, -AppSizes.height(0.4)),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            price,
            style: TextStyle(
              fontSize: AppSizes.font(1.4),
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(width: AppSizes.width(12)),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: AppSizes.font(1.4),
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: AppSizes.width(12)),
          Expanded(
            child: CustomElevatedButton(
              borderRadius: 8,
              text: buttonText,
              textColor: AppColors.white,
              gradient: gradient,
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
