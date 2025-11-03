import 'package:flutter/material.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/images.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';
import '../../../utils/device/device_utils.dart';
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
    _startTimer();
  }

  void _startTimer() {
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, AppRoutes.signUpScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.linerGradient),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: AppSizes.height(45),
                  width: AppSizes.width(80),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          AppImages.backgroundOne,
                          fit: BoxFit.contain,
                          width: AppSizes.width(120),
                        ),
                      ),
                      Positioned(
                        bottom: AppSizes.height(8),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              AppImages.locationIcon,
                              width: AppSizes.width(24),
                              height: AppSizes.height(12),
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                              top: AppSizes.height(2.8),
                              child: Container(
                                width: AppSizes.width(9.5),
                                height: AppSizes.width(9.5),
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
                    fontSize: AppSizes.font(7),
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
