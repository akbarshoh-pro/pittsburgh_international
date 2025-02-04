import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/constants/app_colors.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
