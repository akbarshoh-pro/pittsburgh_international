import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';

import '../../../core/constants/app_colors.dart';
import 'icon_with_bg.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({super.key, required this.icon, required this.title, this.color});
  final String icon;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        children: [
          IconWithBg(
              icon: icon,
              color: color ?? AppColors.purple,
          ),
          16.pw,
          Text(
            title,
            style: context.fontScheme.titleMediumMedium.copyWith(
                color: color ?? AppColors.dark
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
            color: AppColors.grey,
          )
        ],
      ),
    );
  }
}
