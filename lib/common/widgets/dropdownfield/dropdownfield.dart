import 'package:flutter/material.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropdownField extends StatefulWidget {
  final String hintText;
  final IconData? prefixIcon;
  final List<Map<String, String>> items; // title + subtitle

  const CustomDropdownField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    required this.items,
  }) : super(key: key);

  @override
  _CustomDropdownFieldState createState() => _CustomDropdownFieldState();
}

class _CustomDropdownFieldState extends State<CustomDropdownField> {
  Map<String, String>? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: DropdownButtonFormField<Map<String, String>>(
        value: selectedValue,
        style: GoogleFonts.roboto(
          color: AppColors.black,
          fontSize: 18,
        ),
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon != null
              ? Icon(widget.prefixIcon, color: AppColors.primary)
              : null,
          hintText: widget.hintText,
          hintStyle: GoogleFonts.roboto(
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFC4C4C4), width: 1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFC4C4C4), width: 1),
          ),
        ),
        icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
        items: widget.items.map((item) {
          return DropdownMenuItem<Map<String, String>>(
            value: item,
            child: Row(
              children: [
                Icon(Icons.location_on, color: AppColors.black),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title']!,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: AppColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      item['subtitle']!,
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
        },
        dropdownColor: Colors.white,
      ),
    );
  }
}
