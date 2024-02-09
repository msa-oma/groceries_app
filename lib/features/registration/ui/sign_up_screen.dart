import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grociries_app/core/util/app_functions.dart';
import 'package:grociries_app/features/bottom_nav_bar/ui/nav_bar_screen.dart';

import '../../../core/util/app_colors.dart';
import '../../../core/util/app_images.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../../../core/widgets/password_text_form_field_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Image.asset(AppImages.carrotWithOrangeColorImage)),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Sign Up",
                  style: GoogleFonts.glory(
                    color: AppColors.grayMediumDark,
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
                Text(
                  "Enter your credentials to continue",
                  style: GoogleFonts.glory(
                    color: AppColors.grayMediumDark,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: GoogleFonts.glory(
                      color: AppColors.grayMediumDark,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    suffixIcon: const Icon(
                      //it shoul appears when user enter valid Email
                      Icons.check,
                      color: AppColors.greenGrass,
                    ),
                    labelStyle: GoogleFonts.glory(
                      color: AppColors.grayMediumDark,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const PasswordTextFormFieldWidget(),
                const SizedBox(
                  height: 20,
                ),

                //Terms of services an privacy Policy.
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: AppColors.grayMediumDark,
                      fontSize: 16,
                    ),
                    children: [
                      const TextSpan(
                        text: "By continuing you agree to our ",
                      ),
                      TextSpan(
                        text: "Terms of Service",
                        style: const TextStyle(
                          color: AppColors.greenGrass,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      const TextSpan(
                        text: " and ",
                      ),
                      TextSpan(
                        text: "Privacy Policy.",
                        style: const TextStyle(
                          color: AppColors.greenGrass,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                  text: "Sign Up",
                  onPressedx: () {
                    AppFunctions.navigateTo(
                        context: context,
                        navigatedScreen: const BottomNavBarScreen());
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Alerady have an account?",
                      style: GoogleFonts.glory(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: GoogleFonts.glory(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenGrass),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
