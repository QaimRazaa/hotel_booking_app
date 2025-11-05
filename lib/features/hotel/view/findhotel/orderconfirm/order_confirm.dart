import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/common/widgets/elevatedbutton/elevated_button.dart';
import 'package:hotel_booking_app/common/widgets/sectionheading/section_heading.dart';
import 'package:hotel_booking_app/common/widgets/textfield/textfield.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/findhotel/booknow/widgets/widgets.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart'; // AppSizes

import '../../../../../utils/constants/images.dart';
import '../widgets/room_info_row.dart';

class OrderConfirm extends StatefulWidget {
  const OrderConfirm({super.key});

  @override
  State<OrderConfirm> createState() => _OrderConfirmState();
}

class _OrderConfirmState extends State<OrderConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: EdgeInsets.all(AppSizes.width(6)),
              child: Column(
                children: [
                  SectionTitle(title: 'ROOM INFO'),
                  SizedBox(height: AppSizes.height(1.5)),
                  RoomInfoRow(
                    label: 'No. of rooms',
                    value: '2',
                  ),
                  SizedBox(height: AppSizes.height(1)),
                  RoomInfoRow(
                    label: 'Room type',
                    value: 'Air conditioned',
                  ),
                  SizedBox(height: AppSizes.height(1)),
                  RoomInfoRow(
                    label: 'Room',
                    value: '3 Nights (\$127 x 3 = \$381)',
                  ),
                  SizedBox(height: AppSizes.height(1)),
                  RoomInfoRow(
                    label: 'Taxes',
                    value: '\$25',
                  ),
                  SizedBox(height: AppSizes.height(1)),
                  Divider(color: AppColors.dividerColor, thickness: AppSizes.width(0.25)),
                  SizedBox(height: AppSizes.height(1)),
                  RoomInfoRow(
                    label: 'Total',
                    value: '\$25',
                    valueFontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: AppSizes.height(1.5)),
                  Divider(color: AppColors.dividerColor, thickness: AppSizes.width(0.25)),
                  SizedBox(height: AppSizes.height(1.5)),
                  SectionTitle(title: 'GUEST INFO'),
                  SizedBox(height: AppSizes.height(1.5)),
                  RoomInfoRow(label: 'Name', value: 'John Smith'),
                  SizedBox(height: AppSizes.height(1)),
                  RoomInfoRow(label: 'Email', value: 'johnsmith@gmail.com'),
                  SizedBox(height: AppSizes.height(1)),
                  RoomInfoRow(label: 'Mobile Number', value: '+921234567890'),
                  SizedBox(height: AppSizes.height(1.5)),
                  Divider(color: AppColors.dividerColor, thickness: AppSizes.width(0.25)),
                  SizedBox(height: AppSizes.height(1.5)),
                  SectionTitle(title: 'PROMO CODE'),
                  SizedBox(height: AppSizes.height(1)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'If you have promo code please enter it below',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightGrey,
                        fontSize: AppSizes.font(1.5),
                      ),
                    ),
                  ),
                  SizedBox(height: AppSizes.height(1.5)),
                  CustomTextField(hintText: 'ENTER PROMO CODE'),
                  SizedBox(height: AppSizes.height(5)),
                  CustomElevatedButton(
                    text: 'Confirm Order',
                    textColor: AppColors.white,
                    onPressed: () {Navigator.pushNamed(context, AppRoutes.paymentMethodScreen);},
                    gradient: AppColors.linerGradient2,
                    width: double.infinity,
                    borderRadius: 14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
