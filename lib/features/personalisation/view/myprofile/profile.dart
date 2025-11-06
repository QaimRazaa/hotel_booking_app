import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/navbar.dart';
import 'package:hotel_booking_app/features/personalisation/view/myprofile/widgets/profile_menu_button.dart';
import 'package:hotel_booking_app/utils/constants/text_style.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utils.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    // Background Image with blur gradient
                    Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.myProfile),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: AppColors.linerGradientBlur,
                        ),
                      ),
                    ),

                    // Profile Card
                    Positioned(
                      bottom: AppSizes.height(-10),
                      child: Container(
                        width: AppSizes.width(85),
                        height: 200,
                        padding: EdgeInsets.all(AppSizes.width(5)),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(AppSizes.radius(4)),
                        ),
                        child: Column(
                          children: [
                            Text('John Smith',
                                style: AppTextStyles.profileName()),
                            SizedBox(height: AppSizes.height(1)),
                            Text('johnsmith@gmail.com',
                                style: AppTextStyles.profileInfo()),
                            SizedBox(height: AppSizes.height(1)),
                            Text('+225 698698966',
                                style: AppTextStyles.profileInfo()),
                          ],
                        ),
                      ),
                    ),

                    // Edit Icon
                    Positioned(
                      bottom: AppSizes.height(6.5),
                      right: AppSizes.width(3),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.editProfileScreen);
                        },
                        child: Image(
                          image: AssetImage(AppImages.pencilIcon),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: AppSizes.height(12)),
                Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: AppSizes.width(7.5)),
                  child: Image(
                    image: AssetImage(AppImages.card),
                    width: double.infinity,
                  ),
                ),
                SizedBox(height: AppSizes.height(1)),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.addACardScreen);
                  },
                  child: Text(
                    '+ ADD A NEW CARD',
                    style: AppTextStyles.buttonText(),
                  ),
                ),
              ],
            ),
          ),

          ProfileMenuButton(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

