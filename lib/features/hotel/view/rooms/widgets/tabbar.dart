import 'package:flutter/material.dart';
import '../../../../../utils/device/device_utils.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final ValueChanged<int>? onTabSelected;
  final Color activeColor;
  final Color inactiveColor;
  final Color borderColor;
  final Color selectedTextColor;
  final Color unselectedTextColor;

  const CustomTabBar({
    super.key,
    required this.tabs,
    this.selectedIndex = 0,
    this.onTabSelected,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.white,
    this.borderColor = Colors.blue,
    this.selectedTextColor = Colors.white,
    this.unselectedTextColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.height(4.5), // 40 original
      decoration: BoxDecoration(
        color: inactiveColor,
        border: Border.all(color: borderColor, width: AppSizes.width(0.5)), // 2
        borderRadius: BorderRadius.circular(AppSizes.width(3.75)), // 15
      ),
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: List.generate(tabs.length, (index) {
          final bool isSelected = index == selectedIndex;
          return Expanded(
            child: GestureDetector(
              onTap: () => onTabSelected?.call(index),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected ? activeColor : Colors.transparent,
                ),
                child: Text(
                  tabs[index],
                  style: TextStyle(
                    color: isSelected ? selectedTextColor : unselectedTextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: AppSizes.font(1.75), // default font sizing
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
