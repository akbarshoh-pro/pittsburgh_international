import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';
import 'package:pittsburgh_international/feature/profile/components/icon_with_bg.dart';

import '../../../core/constants/app_colors.dart';

class UserBalanceCard extends StatelessWidget {
  const UserBalanceCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          const IconWithBg(icon: 'assets/svg/ic_w.svg'),
          16.pw,
          Text(
            'Кошелек',
            style: context.fontScheme.titleMediumMedium.copyWith(
                color: AppColors.dark
            ),
          ),
          const Spacer(),
          Text(
            '247 700 000 сум',
            style: context.fontScheme.titleMediumMedium.copyWith(
                color: AppColors.grey
            ),
          ),
        ],
      ),
    );
  }
}
