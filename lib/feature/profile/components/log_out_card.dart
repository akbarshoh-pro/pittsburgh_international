import 'package:flutter/material.dart';
import 'package:pittsburgh_international/feature/profile/components/profile_item.dart';

import '../../../core/constants/app_colors.dart';

class LogOutCard extends StatelessWidget {
  const LogOutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12)
      ),
      child: const ProfileItem(
          icon: Icons.login,
          color: AppColors.red,
          title: 'Выйти из аккаунта'
      ),
    );
  }
}
