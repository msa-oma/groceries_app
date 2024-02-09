import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grociries_app/core/widgets/custom_elevated_button.dart';

import '../../../core/util/app_functions.dart';
import '../../../core/util/app_images.dart';
import '../../registration/ui/login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image:
                    Image.asset(AppImages.deliveryBackgroundOnBoarding).image,
              )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(AppImages.carrotImage),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome \n to our Store",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.glory(
                      height: 0.9,
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Get your grociries as soon as possible in one hour",
                  style: GoogleFonts.glory(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: CustomElevatedButton(
                    onPressedx: () {
                      AppFunctions.navigateTo(
                          context: context,
                          navigatedScreen: const LoginScreen());
                    },
                    text: "Get Started",
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
