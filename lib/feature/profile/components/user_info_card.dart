import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/constants/app_colors.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({super.key, required this.onEditTap});
  final VoidCallback onEditTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          Image.asset(
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            'assets/png/Avatar.png'
          ),
          16.pw,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'Kevin Lanceplaine',
                style: context.fontScheme.titleMediumMedium.copyWith(
                  color: AppColors.dark
                ),
              ),
              Text(
                '+998 99 123 45 57',
                style: context.fontScheme.titleSmallMedium.copyWith(
                  color: AppColors.grey
                ),
              )
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: onEditTap,
            child: const Icon(
              Icons.edit_outlined,
              color: AppColors.grey,
            ),
          )
        ],
      ),
    );
  }
}
