import 'package:flutter/material.dart';

Widget CustomTabBar() {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.blue, width: 2),
      borderRadius: BorderRadius.circular(15),
    ),
    clipBehavior: Clip.hardEdge,
    child: Row(
      children: [
        // Hotels tab (active)
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: const Text(
              'Hotels',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),


        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: Colors.transparent,
            child: const Text(
              'Villas',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    ),
  );  }