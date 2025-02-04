import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({super.key, required this.bgColor, required this.textColor, required this.onTap, required this.title});
  final Color bgColor;
  final Color textColor;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.maxFinite,
        height: 52,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12)
        ),
        alignment: const Alignment(0, 0),
        child: Text(
          title,
          style: context.fontScheme.titleMediumSemiBold.copyWith(
            color: textColor
          ),
        ),
      ),
    );
  }
}
