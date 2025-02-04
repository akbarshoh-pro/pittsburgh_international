import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pittsburgh_international/core/constants/app_colors.dart';

class IconWithBg extends StatelessWidget {
  const IconWithBg({super.key, required this.icon, this.color = AppColors.purple});
  final String icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(8)
      ),
      child: SvgPicture.asset(
        icon,
        width: 24,
        height: 24,
        color: color,
      ),
    );
  }
}
