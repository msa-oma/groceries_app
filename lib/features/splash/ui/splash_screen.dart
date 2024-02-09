import 'package:flutter/material.dart';
import 'package:grociries_app/core/util/app_functions.dart';
import 'package:grociries_app/features/on_boarding/ui/on_boarding_screen.dart';
import '../../../core/util/app_colors.dart';
import '../../../core/util/app_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        AppFunctions.navigateTo(
            context: context, navigatedScreen: const OnBoardingScreen());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenGrass,
      body: Center(
        child: Image.asset(AppImages.nectarLogo),
      ),
    );
  }
}
