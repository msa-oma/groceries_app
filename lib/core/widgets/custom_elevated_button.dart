import 'package:flutter/material.dart';
import 'package:grociries_app/core/util/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressedx;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressedx,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressedx,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(55),
          backgroundColor: AppColors.greenGrass,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.whiteLightCreamy),
          ),
        ));
  }
}
