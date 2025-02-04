import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pittsburgh_international/core/constants/app_colors.dart';

import '../../../core/widgets/navigation_bar/bottom_bar/simple_bottom_bar.dart';
import '../../chat/page/chat_screen.dart';
import '../../history/page/history_screen.dart';
import '../../map/page/map_screen.dart';
import '../../profile/page/profile_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          MapScreen(),
          HistoryScreen(),
          ChatScreen(),
          ProfileScreen()
        ],
      ),
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [AppColors.purple, AppColors.gr2],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: FloatingActionButton(
          onPressed: null,
          shape: const CircleBorder(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: SvgPicture.asset(
            'assets/svg/ic_car.svg',
            width: 30,
          )
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SimpleBottomBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedColor: AppColors.purple,
          unselectedColor: AppColors.grey,
          icons: const [
            'assets/svg/ic_map.svg',
            'assets/svg/ic_his.svg',
            'assets/svg/ic_mes.svg',
            'assets/svg/ic_us.svg'
          ],
          texts: const [
            'Карта',
            'История',
            'Связь',
            'Профиль'
          ]
      ),
      resizeToAvoidBottomInset: false,
      extendBody: true,
    );
  }
}



