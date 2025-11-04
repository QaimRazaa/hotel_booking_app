import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import '../../../../../utils/device/device_utils.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackArrow;
  final bool showActions;
  final VoidCallback? onBackPressed;
  final List<Widget>? actions;
  final Color titleColor;



  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackArrow = false,
    this.showActions = true,
    this.onBackPressed,
    this.actions,
    this.titleColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width(4),
        vertical: AppSizes.height(1.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (showBackArrow)
                IconButton(
                  icon: Icon(Icons.arrow_back, color: titleColor),
                  onPressed: onBackPressed ?? () => Navigator.pop(context),
                ),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: AppSizes.font(2.4),
                  fontWeight: FontWeight.w500,
                  color: titleColor,
                ),
              ),
            ],
          ),
          if (showActions)
            Row(
              children: actions ??
                  [
                    const _CustomChip(label: 'Stay', selected: false),
                    SizedBox(width: AppSizes.width(2)),
                    const _CustomChip(label: 'Pass', selected: true),
                    SizedBox(width: AppSizes.width(2)),
                    Image(image: AssetImage(AppImages.moreIcon)),
                  ],
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppSizes.height(7));
}

class _CustomChip extends StatelessWidget {
  final String label;
  final bool selected;

  const _CustomChip({required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width(3),
        vertical: AppSizes.height(0.6),
      ),
      decoration: BoxDecoration(
        color: selected ? Colors.green : Colors.grey.shade200,
        borderRadius: AppSizes.borderRadius(2),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontSize: AppSizes.font(1.2),
        ),
      ),
    );
  }
}
