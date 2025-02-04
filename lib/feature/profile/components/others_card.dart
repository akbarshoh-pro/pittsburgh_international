import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/constants/app_colors.dart';
import 'package:pittsburgh_international/feature/profile/components/profile_item.dart';

class OthersCard extends StatelessWidget {
  const OthersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          const ProfileItem(
              icon: 'assets/svg/ic_s.svg',
              title: 'Настройки'
          ),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 60),
            height: 0.3,
            color: AppColors.grey,
          ),
          const ProfileItem(
              icon: 'assets/svg/ic_c.svg',
              title: 'Служба поддержки'
          ),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 60),
            height: 0.3,
            color: AppColors.grey,
          ),
          const ProfileItem(
              icon: 'assets/svg/ic_f.svg',
              title: 'Условия использования'
          ),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 60),
            height: 0.3,
            color: AppColors.grey,
          ),
          const ProfileItem(
              icon: 'assets/svg/ic_i.svg',
              title: 'О нас'
          )
        ],
      ),
    );
  }
}
