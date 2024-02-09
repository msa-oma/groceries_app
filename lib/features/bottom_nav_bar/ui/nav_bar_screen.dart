import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grociries_app/core/util/app_colors.dart';
import 'package:grociries_app/features/home/ui/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

List screens = [
  const HomeScreen(),
  const HomeScreen(),
  const HomeScreen(),
  const HomeScreen(),
  const HomeScreen(),
];

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        selectedItemColor: AppColors.greenGrass,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/store-icon-black.svg',
                colorFilter: ColorFilter.mode(
                    currentIndex == 0
                        ? AppColors.greenGrass
                        : const Color(0xffc0c0c0),
                    BlendMode.srcIn),
              ),
              label: 'shop'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/Explor-icon.svg',
                colorFilter: ColorFilter.mode(
                    currentIndex == 1
                        ? AppColors.greenGrass
                        : AppColors.grayMediumDark,
                    BlendMode.srcIn),
              ),
              label: 'Explor'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/cart-icon.svg',
                colorFilter: ColorFilter.mode(
                    currentIndex == 2
                        ? AppColors.greenGrass
                        : AppColors.grayMediumDark,
                    BlendMode.srcIn),
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/favorite-icon.svg',
                colorFilter: ColorFilter.mode(
                    currentIndex == 3
                        ? AppColors.greenGrass
                        : AppColors.grayMediumDark,
                    BlendMode.srcIn),
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/svgs/account-icon.svg',
                colorFilter: ColorFilter.mode(
                    currentIndex == 4
                        ? AppColors.greenGrass
                        : AppColors.grayMediumDark,
                    BlendMode.srcIn),
              ),
              label: 'Account'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
