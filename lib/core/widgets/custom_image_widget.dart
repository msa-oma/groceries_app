import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:grociries_app/core/util/app_colors.dart';

class CustomImageWidget extends StatelessWidget {
  final String imageUrl;

  const CustomImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.fill,
      placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(
        color: AppColors.greenGrass,
      )),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
