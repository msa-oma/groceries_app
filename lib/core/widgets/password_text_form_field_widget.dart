import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grociries_app/core/util/app_colors.dart';

class PasswordTextFormFieldWidget extends StatefulWidget {
  const PasswordTextFormFieldWidget({super.key});

  @override
  State<PasswordTextFormFieldWidget> createState() =>
      _PasswordTextFormFieldWidgetState();
}

class _PasswordTextFormFieldWidgetState
    extends State<PasswordTextFormFieldWidget> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isVisible,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          icon: Icon(isVisible
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined),
        ),
        labelText: "Password",
        labelStyle: GoogleFonts.glory(
          color: AppColors.grayMediumDark,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}
