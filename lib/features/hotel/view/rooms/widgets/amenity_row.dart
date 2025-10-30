import 'package:flutter/material.dart';

Widget AmenityRow() {
  return Row(
    children: [
      Icon(Icons.ac_unit, size: 20, color: Colors.grey.shade400),
      const SizedBox(width: 8),
      Text('Fan', style: TextStyle(color: Colors.grey.shade400)),
      const SizedBox(width: 24),
      const Icon(Icons.circle, size: 10, color: Colors.blue),
      const SizedBox(width: 8),
      const Text('Air conditioned', style: TextStyle(color: Colors.black)),
    ],
  );
}