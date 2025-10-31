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
  final SplashScreenViewModel _viewModel = SplashScreenViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.startSplashScreenTimer(context, SignupScreen());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.linerGradient),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.45,
                  width: size.width * 0.8,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          AppImages.backgroundOne,
                          fit: BoxFit.contain,
                          width: size.width * 1.2,
                        ),
                      ),

                      Positioned(
                        bottom: 80,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              AppImages.locationIcon,
                              width: 110,
                              height: 110,
                              fit: BoxFit.contain,
                            ),

                            Positioned(
                              top: 28,
                              child: Container(
                                width: 38,
                                height: 38,
                                decoration: const BoxDecoration(
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
                ),

                Text(
                  AppTexts.findHotel,
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
