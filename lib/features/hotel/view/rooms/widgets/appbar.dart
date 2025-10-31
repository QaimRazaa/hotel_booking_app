import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackArrow;
  final bool showActions;
  final VoidCallback? onBackPressed;
  final List<Widget>? actions;
  final Color titleColor; // 👈 new: customizable title color

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackArrow = false,
    this.showActions = true,
    this.onBackPressed,
    this.actions,
    this.titleColor = Colors.black, // 👈 default color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 🔙 Back Arrow + Title
          Row(
            children: [
              if (showBackArrow)
                IconButton(
                  icon: Icon(Icons.arrow_back, color: titleColor),
                  onPressed: onBackPressed ?? () => Navigator.pop(context),
                ),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: titleColor, // 👈 applied here
                ),
              ),
            ],
          ),

          // 🎛️ Reusable Actions Row
          if (showActions)
            Row(
              children: actions ??
                  [
                    const _CustomChip(label: 'Stay', selected: false),
                    const SizedBox(width: 8),
                    const _CustomChip(label: 'Pass', selected: true),
                    const SizedBox(width: 8),
                    const Icon(Icons.filter_list, color: Colors.blue),
                  ],
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomChip extends StatelessWidget {
  final String label;
  final bool selected;

  const _CustomChip({required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? Colors.green : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontSize: 12,
        ),
      ),
    );
  }
}
