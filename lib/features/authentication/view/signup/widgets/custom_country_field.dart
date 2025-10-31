import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/constants/sizes.dart';
import 'package:hotel_booking_app/utils/constants/texts.dart';

import '../../../../../common/widgets/textfield/textfield.dart';

class CountryCodeField extends StatefulWidget {
  const CountryCodeField({super.key});

  @override
  State<CountryCodeField> createState() => _CountryCodeFieldState();
}

class _CountryCodeFieldState extends State<CountryCodeField> {
  String selectedCountryCode = '+92';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFFC4C4C4), width: 1)),
      ),
      child: Row(
        children: [
          Icon(Icons.phone_outlined, color: AppColors.primary),
          const SizedBox(width: 12),

          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedCountryCode,
              icon: Icon(Icons.arrow_drop_down, color: AppColors.primary),
              items: ['+225', '+1', '+44', '+91', '+92']
                  .map(
                    (code) => DropdownMenuItem(value: code, child: Text(code)),
                  )
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountryCode = value!;
                });
              },
            ),
          ),

          const SizedBox(width: Sizes.defaultSpace /3),

          Expanded(
            child: CustomTextField(
              hintText: AppTexts.mobileNo,
              prefixIcon: null,
              underLine: false,
            ),
          ),
        ],
      ),
    );
  }
}
