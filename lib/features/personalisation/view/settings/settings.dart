import 'package:flutter/material.dart';
import 'package:hotel_booking_app/core/routes.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/navbar.dart';
import 'package:hotel_booking_app/features/personalisation/view/settings/widgets/logout_dialogue.dart';
import 'package:hotel_booking_app/features/personalisation/view/settings/widgets/settings_tile.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';

import '../../../../utils/device/device_utils.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.width(6),
            vertical: AppSizes.height(6),
          ),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Settings',
                showBackArrow: false,
                showActions: false,
              ),
              Column(
                children: [
                  SizedBox(height: AppSizes.height(5)),
                  SettingsTile(title: 'Notifications', onTap: () {Navigator.pushNamed(context, AppRoutes.notifications);}),
                  SizedBox(height: AppSizes.height(5)),
                  SettingsTile(title: 'Privacy Policy', onTap: () {Navigator.pushNamed(context, AppRoutes.privacyPolicy);}),
                  SizedBox(height: AppSizes.height(1.5)),
                  SettingsTile(title: 'Terms & conditions', onTap: () {Navigator.pushNamed(context, AppRoutes.termsConditions);}),
                  SizedBox(height: AppSizes.height(5)),
                  SettingsTile(title: 'About app', onTap: () {}),
                  SizedBox(height: AppSizes.height(1.5)),
                  SettingsTile(title: 'Help & Support', onTap: () {}),
                  SizedBox(height: AppSizes.height(1.5)),
                  SettingsTile(title: 'Rate the Mypass app', onTap: () {}),
                  SizedBox(height: AppSizes.height(1.5)),
                  SettingsTile(title: 'Faq?', onTap: () {Navigator.pushNamed(context, AppRoutes.faq);}),
                  SizedBox(height: AppSizes.height(1.5)),
                  SizedBox(height: AppSizes.height(5)),
                  SettingsTile(
                    title: 'Logout',
                    textColor: AppColors.red,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => LogoutDialog(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
