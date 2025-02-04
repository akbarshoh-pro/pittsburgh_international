import 'package:flutter/material.dart';
import 'package:pittsburgh_international/core/constants/app_colors.dart';
import 'package:pittsburgh_international/core/utils/ui/ui_utils.dart';
import 'package:pittsburgh_international/feature/profile/components/profile_item.dart';
import 'package:pittsburgh_international/feature/profile/components/user_balance_card.dart';

import '../components/log_out_card.dart';
import '../components/others_card.dart';
import '../components/user_info_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Профиль',
          style: context.fontScheme.titleLargeSemiBold,
        ),
        backgroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              20.ph,
              UserInfoCard(
                onEditTap: () {

                },
              ),
              20.ph,
              const UserBalanceCard(),
              20.ph,
              const OthersCard(),
              20.ph,
              const LogOutCard()
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.lightGrey,
    );
  }
}
