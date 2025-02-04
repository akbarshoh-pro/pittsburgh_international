import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

  final String icon;
  final String text;
  final bool isSelected;
  final Color selectedColor;
  final Color defColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isSelected)
          Container(
            width: 30,
            height: 2,
            color: selectedColor,
          ),
        const Spacer(),
        SvgPicture.asset(
          width: 26,
          height: 26,
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
