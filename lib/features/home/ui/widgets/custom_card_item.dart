import 'package:flutter/material.dart';

import '../../../../core/util/app_colors.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 174,
      height: 248,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: .5, color: AppColors.grayEarthy)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Image.network(
                  'https://img.freepik.com/free-photo/many-different-berries-form-frame-white-background_485709-54.jpg')),
          const Text(
            "name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text(
            '7pcs,price',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.graySlate),
          ),
          Row(
            children: [
              const Expanded(
                  child: Text(
                '\$ 44',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              )),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.greenGrass),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
