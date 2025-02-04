import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';

import '../../constants/app_colors.dart';
import '../buttons/simple_button.dart';

class EmptyStationDialog extends StatelessWidget {
  const EmptyStationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 420,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(16), right: Radius.circular(16))
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Станция 2',
            style: context.fontScheme.customSmallSemiBold,
          ),
          Text(
            'Улица Мирзо Улугбекаб Ташкент',
            style: context.fontScheme.titleMediumRegular.copyWith(
              color: AppColors.grey
            ),
          ),
          24.ph,
          Container(
            decoration: BoxDecoration(
              color: AppColors.lightGrey,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              children: [
                _buildItem('А порт', context),
                Container(
                  width: double.maxFinite,
                  height: 0.5,
                  color: AppColors.grey,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                ),
                _buildItem('В порт', context)
              ],
            ),
          ),
          const Spacer(),
          SimpleButton(
              onTap: () {
                Navigator.pop(context);
              },
              title: 'Выберите порт из списка',
              bgColor: AppColors.grey.withOpacity(0.3),
              textColor: AppColors.dark
          ),
          20.ph
        ],
      )
    );
  }

  Widget _buildItem(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Text(
            title,
            style: context.fontScheme.titleMediumSemiBold,
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: AppColors.blue.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20)
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Text(
              'Свободен',
              style: context.fontScheme.customSmallestRegular.copyWith(
                color: AppColors.blue
              ),
            ),
          )
        ],
      ),
    );
  }
}
