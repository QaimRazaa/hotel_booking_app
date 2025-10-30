
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants/colors.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Find Room',
        style: GoogleFonts.roboto(
          fontWeight: FontWeight.w500,
          fontSize: 24,
          color: AppColors.black,
        ),
      ),
      actions: [
        Row(
          children: [
            Text(
              'Stay',
              style: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            Transform.scale(
              scale: 0.7,
              child: Switch(
                value: true,
                activeColor: Colors.green,

                onChanged: (value) {},
              ),
            ),
            const Text(
              'Pass',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.flag, color: AppColors.blue),
          onPressed: () {},
        ),
      ],
    );
  }
}
