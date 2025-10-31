import 'package:flutter/material.dart';
import 'package:hotel_booking_app/features/authentication/view/signup/signup.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';

import '../../../utils/constants/sizes.dart';
import '../viewmodel/splash_view_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  // final SplashScreenViewModel _viewModel = SplashScreenViewModel();
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _viewModel.startSplashScreenTimer(context, SignupScreen());
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.linerGradient),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image(image: AssetImage(AppImages.backgroundOne)),
                    Positioned(top: 10, left: 20, child: Clouds()),
                    Positioned(top: 30, right: 30, child: Clouds()),

                    Positioned(
                      top: 120,
                      bottom: 0,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.orange,
                            size: 125,
                          ),
                          Positioned(
                            top: 33,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Sizes.height60),
                Text(
                  AppTexts.findHotel,
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Buildings(double width, double height) {
    return SizedBox(
      width: 50,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(color: AppColors.lightWhite.withOpacity(0.5)),
      ),
    );
  }

  Widget Clouds() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 20,
          height: 12,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Transform.translate(
          offset: Offset(-8, 0),
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(-16, 0),
          child: Container(
            width: 30,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ],
    );
  }
}
