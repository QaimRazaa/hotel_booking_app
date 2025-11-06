import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/text_style.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';
import '../../../../../common/widgets/elevatedbutton/elevated_button.dart';

class CancelCabDialog extends StatefulWidget {
  const CancelCabDialog({super.key});

  @override
  State<CancelCabDialog> createState() => _CancelCabDialogState();
}

class _CancelCabDialogState extends State<CancelCabDialog> {
  final TextEditingController customReasonController = TextEditingController();

  final List<String> reasons = [
    'Cab not require',
    'My trip is cancelled',
    'Driver delay',
    'Price is more',
    'ETA is more',
    'Other',
  ];

  @override
  void dispose() {
    customReasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.radius(4)),
      ),
      backgroundColor: Colors.white,
      child: Container(
        width: AppSizes.width(85),
        padding: AppSizes.paddingAll(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header with close button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'WHY YOU CANCEL THE CAB',
                    style: AppTextStyles.profileInfo(),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.close,
                    size: AppSizes.icon(2.5),
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSizes.height(3)),

            // Radio button list
            ...reasons.map((reason) {
              return Padding(
                padding: EdgeInsets.only(bottom: AppSizes.height(2)),
                child: Row(
                  children: [
                    Container(
                      width: AppSizes.width(3),
                      height: AppSizes.width(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey[400]!, width: 2),
                      ),
                    ),
                    SizedBox(width: AppSizes.width(4)),
                    Expanded(
                      child: Text(
                        reason,
                        style: GoogleFonts.roboto(
                          fontSize: AppSizes.font(1.5),
                          fontWeight: FontWeight.w400,
                          color: AppColors.darkerGrey,
                          decorationColor: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),

            Container(
              margin: EdgeInsets.only(
                top: AppSizes.height(2),
                bottom: AppSizes.height(3),
              ),
              padding: AppSizes.paddingAll(3),
              decoration: BoxDecoration(
                color: AppColors.lightWhite,
                borderRadius: BorderRadius.circular(AppSizes.radius(4)),
              ),
              child: TextField(
                controller: customReasonController,
                maxLines: 4,
                style: AppTextStyles.smallText(),
                decoration: InputDecoration(
                  hintText: 'Enter text reason here',
                  hintStyle: GoogleFonts.roboto(
                    fontSize: AppSizes.font(1.8),
                    color: Colors.grey[500],
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),

            CustomElevatedButton(
              text: 'Submit',
              gradient: AppColors.linerGradient3,
              textColor: Colors.white,
              borderRadius: AppSizes.radius(2),
              width: double.infinity,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.bookACar);
              },
            ),
          ],
        ),
      ),
    );
  }
}
