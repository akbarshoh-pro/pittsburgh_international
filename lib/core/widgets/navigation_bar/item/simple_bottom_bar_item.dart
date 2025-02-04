import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';

class SimpleBottomBarItem extends StatelessWidget {
  const SimpleBottomBarItem({
    required this.icon,
    required this.text,
    required this.isSelected,
    required this.selectedColor,
    required this.defColor,
    super.key
  });

  final IconData icon;
  final String text;
  final bool isSelected;
  final Color selectedColor;
  final Color defColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          size: 24,
          icon,
          color: isSelected ? selectedColor : defColor,
        ),
        0.ph,
        Text(
          text,
          style: context.fontScheme.bodyMediumMedium.copyWith(
              color: isSelected ? selectedColor : defColor
          ),
        )
      ],
    );
  }
}
