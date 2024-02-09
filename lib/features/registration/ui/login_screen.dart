import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grociries_app/core/util/app_functions.dart';
import 'package:grociries_app/features/registration/ui/sign_up_screen.dart';

import '../../../core/util/app_colors.dart';
import '../../../core/util/app_images.dart';
import '../../../core/widgets/custom_elevated_button.dart';
import '../../../core/widgets/password_text_form_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  "Login",
                  style: GoogleFonts.glory(
                    color: AppColors.grayMediumDark,
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
                Text(
                  "Enter your emails and password",
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
                    labelText: "Email",
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
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.glory(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: AppColors.blackCharcoal),
                        ))),
                const SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                  text: "Log In",
                  onPressedx: () {},
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: GoogleFonts.glory(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          AppFunctions.navigateTo(
                              context: context,
                              navigatedScreen: const SignUpScreen());
                        },
                        child: Text(
                          "Signup",
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
