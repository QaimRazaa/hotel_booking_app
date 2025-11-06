import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

import '../../../../../utils/device/device_utils.dart';
import '../../../../hotel/view/rooms/widgets/appbar.dart';
import '../widgets/settings_tile.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          children: [
            CustomAppBar(
              title: 'Notifications',
              showActions: false,
              showBackArrow: true,
            ),
            Padding(
              padding: AppSizes.paddingSymmetric(horizontal: 6),
              child: Column(
                children: [
                  SizedBox(height: AppSizes.height(3)),
                  SettingsTile(
                    title: 'Your room booking in Heden golf has been successful ',
                    onTap: () {},
                    showArrow: false,
                  ),
                  SizedBox(height: AppSizes.height(2)),
                  SettingsTile(
                    title: 'Message from the app admin',
                    onTap: () {},
                    showArrow: false,
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
