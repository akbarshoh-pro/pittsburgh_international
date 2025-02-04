import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';

import '../../constants/app_colors.dart';
import '../buttons/simple_button.dart';

class BusyStationDialog extends StatelessWidget {
  const BusyStationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        height: 600,
        decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.horizontal(left: Radius.circular(16), right: Radius.circular(16))
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Станция 1',
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
              child: Row(
                children: [
                  Expanded(child: _buildItem('Скорость', 'assets/svg/ic_speed.svg', '18.50 КВт', context)),
                  Container(
                    width: 0.5,
                    height: 40,
                    color: AppColors.grey,
                  ),
                  Expanded(child: _buildItem('Потраченные', 'assets/svg/ic_money.svg', '3107.00 КВт', context)),
                  Container(
                    width: 0.5,
                    height: 40,
                    color: AppColors.grey,
                  ),
                  Expanded(child: _buildItem('Стоимость', 'assets/svg/ic_battery.svg', '64 700 сум', context)),
                ],
              ),
            ),
            24.ph,
            Center(
              child: Text(
                '10 мин время зарядки',
                style: context.fontScheme.customSmallSemiBold,
              ),
            ),
            12.ph,
            Center(child: Image.asset('assets/png/charging.png')),
            const Spacer(),
            SimpleButton(
                onTap: () {
                  Navigator.pop(context);
                },
                title: 'Прекратить зарядку',
                bgColor: AppColors.red2,
                textColor: AppColors.dark
            ),
            20.ph
          ],
        )
    );
  }

  Widget _buildItem(String title, String icon, String amount, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 18,
                height: 18,
              ),
              6.pw,
              Text(
                amount,
                style: context.fontScheme.customSmallestSemiBold,
              )
            ],
          ),
          Text(
            title,
            style: context.fontScheme.bodySmallRegular,
          )
        ],
      ),
    );
  }
}
