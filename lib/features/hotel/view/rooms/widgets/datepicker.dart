import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../utils/device/device_utils.dart';

class CustomDatePicker extends StatefulWidget {
  final DateTime? initialDate;
  final ValueChanged<DateTime?> onDateSelected;
  final String hintText;
  final double fontSize;

  const CustomDatePicker({
    super.key,
    this.initialDate,
    required this.onDateSelected,
    required this.hintText,
    this.fontSize = 18,
  });

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
  }

  // ✅ Move AppSizes.init(context) here — safe to use MediaQuery now
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    AppSizes.init(context);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.blue,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      widget.onDateSelected(picked);
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return '${date.month.toString().padLeft(2, '0')}/'
        '${date.day.toString().padLeft(2, '0')}/'
        '${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: AbsorbPointer(
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.calendar_today,
              color: Colors.blue,
              size: AppSizes.icon(2), // responsive icon
            ),
            hintText: widget.hintText,
            hintStyle: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: AppSizes.font(widget.fontSize / 10), // responsive font
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xFFC4C4C4),
                width: AppSizes.height(0.15),
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: AppSizes.height(0.15),
              ),
            ),
          ),
          controller: TextEditingController(
            text: selectedDate != null ? _formatDate(selectedDate) : '',
          ),
          style: GoogleFonts.roboto(
            color: Colors.black87,
            fontSize: AppSizes.font(widget.fontSize / 10),
          ),
        ),
      ),
    );
  }
}
