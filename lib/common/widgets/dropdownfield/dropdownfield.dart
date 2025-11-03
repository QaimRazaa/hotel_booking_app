import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/utils/constants/colors.dart';

class CustomDropdownField extends StatefulWidget {
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
  State<CustomDropdownField> createState() => _CustomDropdownFieldState();
}

class _CustomDropdownFieldState extends State<CustomDropdownField> {
  Map<String, String>? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      alignment: Alignment.center,
      child: DropdownButtonFormField<Map<String, String>>(
        initialValue: selectedValue,
        isExpanded: true,
        dropdownColor: Colors.white,
        icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey, size: 26),

        hint: Row(
          children: [
            if (widget.prefixIcon != null)
              Icon(widget.prefixIcon, color: AppColors.primary, size: 22),
            if (widget.prefixIcon != null) const SizedBox(width: 10),
            Text(
              widget.hintText,
              style: GoogleFonts.roboto(
                color: AppColors.black,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),

        decoration: const InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFC4C4C4), width: 1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffC4C4C4), width: 1),
          ),
        ),


        items: widget.items.map((item) {
          return DropdownMenuItem<Map<String, String>>(
            value: item,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.location_on_outlined, color: Colors.black54, size: 18),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title']!,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 2),
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

        style: GoogleFonts.roboto(
          color: AppColors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
