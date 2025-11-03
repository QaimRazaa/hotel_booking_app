import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:hotel_booking_app/utils/device/device_utils.dart';
import '../../../features/hotel/viewmodel/findroom/dropdown_provider.dart';

class CustomDropdownField extends StatelessWidget {
  final String hintText;
  final IconData? prefixIcon;
  final List<Map<String, String>> items;

  const CustomDropdownField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<DropdownProvider>(
      builder: (context, provider, _) {
        return Container(
          height: AppSizes.height(6.5),
          alignment: Alignment.center,
          child: DropdownButtonFormField<Map<String, String>>(
            initialValue: provider.selectedLocation,
            isExpanded: true,
            dropdownColor: Colors.white,
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.grey,
              size: AppSizes.icon(3),
            ),
            itemHeight: AppSizes.height(6.5),
            menuMaxHeight: AppSizes.height(25),

            hint: Row(
              children: [
                if (prefixIcon != null)
                  Icon(
                    prefixIcon,
                    color: AppColors.primary,
                    size: AppSizes.icon(2.8),
                  ),
                if (prefixIcon != null) SizedBox(width: AppSizes.width(2.5)),
                Text(
                  hintText,
                  style: GoogleFonts.roboto(
                    color: AppColors.black,
                    fontSize: AppSizes.font(2),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                vertical: AppSizes.height(1.3),
                horizontal: 0,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xFFC4C4C4),
                  width: AppSizes.width(0.25),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xffC4C4C4),
                  width: AppSizes.width(0.25),
                ),
              ),
            ),

            items: items.map((item) {
              return DropdownMenuItem<Map<String, String>>(
                value: item,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.black54,
                      size: AppSizes.icon(2.3),
                    ),
                    SizedBox(width: AppSizes.width(2.5)),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            item['title']!,
                            style: GoogleFonts.roboto(
                              fontSize: AppSizes.font(1.1),
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(height: AppSizes.height(0.25)),
                          Text(
                            item['subtitle']!,
                            style: GoogleFonts.roboto(
                              fontSize: AppSizes.font(1.1),
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),

            onChanged: (value) {
              provider.setSelectedLocation(value);
            },

            style: GoogleFonts.roboto(
              color: AppColors.black,
              fontSize: AppSizes.font(2),
            ),
          ),
        );
      },
    );
  }
}
