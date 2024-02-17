import 'package:flutter/material.dart';
import 'package:grociries_app/core/util/app_colors.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.pinkPeachy,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: .5, color: AppColors.grayEarthy)),
      height: 105,
      width: 248,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 20,
          ),
          CircleAvatar(
            child: Image.asset("assets/images/pulses.png"),
          ),
          const SizedBox(
            width: 20,
          ),
          const Text("pulse"),
          const Spacer()
        ],
      ),
    );
  }
}
