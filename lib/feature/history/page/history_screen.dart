import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';

import '../../../core/constants/app_colors.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Это функция недоступна',
          style: context.fontScheme.titleMediumSemiBold,
        ),
      ),
      backgroundColor: AppColors.lightGrey,
    );
  }
}
