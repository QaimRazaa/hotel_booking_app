import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget CustomAppBar() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Find room', style: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w500)),
        Row(
          children: [
            Chip('Stay', false),
            const SizedBox(width: 8),
            Chip('Pass', true),
            const SizedBox(width: 8),
            const Icon(Icons.filter_list, color: Colors.blue),
          ],
        ),
      ],
    ),
  );
}
Widget Chip(String label, bool selected) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    decoration: BoxDecoration(
      color: selected ? Colors.green : Colors.grey.shade200,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Text(label, style: TextStyle(color: selected ? Colors.white : Colors.black, fontSize: 12)),
  );
}