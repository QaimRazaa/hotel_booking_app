import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDatePicker extends StatefulWidget {
  final DateTime? initialDate;
  final ValueChanged<DateTime?> onDateSelected;
  final String hintText;
  final double fontSize; // 👈 reusable font size

  const CustomDatePicker({
    super.key,
    this.initialDate,
    required this.onDateSelected,
    required this.hintText,
    this.fontSize = 18, // default value
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
            prefixIcon: const Icon(Icons.calendar_today, color: Colors.blue),
            hintText: widget.hintText,
            hintStyle: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: widget.fontSize, // 👈 use reusable font size
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFC4C4C4), width: 1),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1),
            ),
          ),
          controller: TextEditingController(
            text: selectedDate != null ? _formatDate(selectedDate) : '',
          ),
          style: GoogleFonts.roboto(
            color: Colors.black87,
            fontSize: widget.fontSize, // 👈 use reusable font size
          ),
        ),
      ),
    );
  }
}
