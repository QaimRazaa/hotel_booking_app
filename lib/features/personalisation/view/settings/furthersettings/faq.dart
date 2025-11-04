import 'package:flutter/material.dart';

import '../../../../../utils/device/device_utils.dart';
import '../../../../hotel/view/rooms/widgets/appbar.dart';
import '../widgets/settings_tile.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Faq',
                showActions: false,
                showBackArrow: true,
              ),
              Padding(
                padding: AppSizes.paddingSymmetric(horizontal: 6),
                child: Column(
                  children: [
                    SizedBox(height: AppSizes.height(3)),
                    SettingsTile(
                      title: 'How do I get the Mobile App for my phone?',
                      onTap: () {},
                    ),
                    SizedBox(height: AppSizes.height(1.5)),
                    SettingsTile(
                      title: 'What features does the Mobile App have?',
                      onTap: () {},
                    ),
                    SizedBox(height: AppSizes.height(1.5)),
                    SettingsTile(
                      title: 'Is the Mobile App secure?',
                      onTap: () {},
                    ),
                    SizedBox(height: AppSizes.height(1.5)),
                    SettingsTile(
                      title: 'How current is the account information ...',
                      onTap: () {},
                    ),
                    SizedBox(height: AppSizes.height(1.5)),
                    SettingsTile(
                      title: 'How do I find your offices and payment locations? ',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
