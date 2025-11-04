import 'package:flutter/material.dart';
import 'package:hotel_booking_app/common/widgets/sectionheading/section_heading.dart';
import 'package:hotel_booking_app/features/hotel/view/rooms/widgets/appbar.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';
import 'package:hotel_booking_app/utils/constants/text_style.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';

import '../../../../../utils/device/device_utils.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Privacy Policy',
                showActions: false,
                showBackArrow: true,
              ),
              Padding(
                padding: AppSizes.paddingSymmetric(horizontal: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(
                      title: 'Privacy Policy',
                      fontWeight: FontWeight.w800,
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    Text(
                      'Built the Find hotel app as a Commercial app. This SERVICE is provided by and is intended for use as is',
                      style: AppTextStyles.smallText(color: AppColors.black),
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    Text(
                      'This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.',
                      style: AppTextStyles.smallText(color: AppColors.black),
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    Text(
                      'If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.',
                      style: AppTextStyles.smallText(color: AppColors.black),
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    Text(
                      'The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at Find hotel unless otherwise defined in this Privacy Policy.',
                      style: AppTextStyles.smallText(color: AppColors.black),
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SectionTitle(
                      title: 'Information Collection and Use',
                      fontWeight: FontWeight.w800,
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    Text(
                      'For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information. The information that we request will be retained by us and used as described in this privacy policy.',
                      style: AppTextStyles.smallText(color: AppColors.black),
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    Text(
                      'The app does use third party services that may collect information used to identify you.',
                      style: AppTextStyles.smallText(color: AppColors.black),
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    Text(
                      'Link to privacy policy of third party service providers used by the app',
                      style: AppTextStyles.smallText(color: AppColors.black),
                    ),
                    SizedBox(height: AppSizes.height(2)),
                    SectionTitle(
                      title: 'Log Data',
                      fontWeight: FontWeight.w800,
                    ),
                    SizedBox(height: AppSizes.height(1)),
                    Text(
                      "We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.",
                      style: AppTextStyles.smallText(color: AppColors.black),
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
