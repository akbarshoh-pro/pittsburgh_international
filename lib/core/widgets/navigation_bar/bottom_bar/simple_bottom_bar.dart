import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/constants/app_colors.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';

import '../item/simple_bottom_bar_item.dart';

class SimpleBottomBar extends StatelessWidget {
  const SimpleBottomBar({
    required this.currentIndex,
    required this.onTap,
    required this.selectedColor,
    required this.unselectedColor,
    required this.icons,
    required this.texts,
    super.key,
  });

  final int currentIndex;
  final void Function(int) onTap;
  final Color selectedColor;
  final Color unselectedColor;
  final List<String> icons;
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      height: 64,
      padding: const EdgeInsets.only(top: 0, left: 8, right: 8),
      elevation: 1000,
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildBarItem(context, 0),
          _buildBarItem(context, 1),
          90.pw,
          _buildBarItem(context, 2),
          _buildBarItem(context, 3),
        ],
      ),
    );
  }

  Widget _buildBarItem(BuildContext context, int index) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        borderRadius: BorderRadius.circular(16),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: SimpleBottomBarItem(
          icon: icons[index],
          text: texts[index],
          isSelected: currentIndex == index,
          selectedColor: selectedColor,
          defColor: unselectedColor,
        ),
      ),
    );
  }
}

