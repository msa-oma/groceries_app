import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:grociries_app/core/util/app_colors.dart';
import 'package:grociries_app/core/util/app_images.dart';
import 'package:grociries_app/core/widgets/custom_image_widget.dart';
import 'package:grociries_app/features/home/ui/widgets/custom_card_item.dart';
import 'package:grociries_app/features/home/ui/widgets/custom_tile_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.carrotWithOrangeColorImage,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    Text(
                      'Dhaka, Banassre',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xff4C4F4D)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      filled: true,
                      fillColor: AppColors.grayishwhite,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15)),
                      label: const Text("Search Store"),
                      prefixIcon: const Icon(Icons.search)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Swiper(
                    autoplay: true,
                    duration: 1000,
                    itemCount: 3,
                    itemBuilder: (context, index) => const CustomImageWidget(
                        imageUrl:
                            "https://img.freepik.com/free-vector/watercolor-food-facebook-cover_23-2149175710.jpg"),
                    pagination: const SwiperPagination(
                        margin: EdgeInsets.all(2),
                        alignment: Alignment.bottomCenter,
                        builder: DotSwiperPaginationBuilder(
                            activeSize: 12,
                            color: Colors.grey,
                            activeColor: AppColors.greenGrass)),
                  ),
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Exclusive Offer',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'see all',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenGrass),
                        ))
                  ],
                ),
                SizedBox(
                  height: 249,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const CustomCardItem(),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 8,
                          ),
                      itemCount: 4),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'best selling',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'see all',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenGrass),
                        ))
                  ],
                ),
                SizedBox(
                  height: 249,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const CustomCardItem(),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 8,
                          ),
                      itemCount: 4),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Groceries',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'see all',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.greenGrass),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 106,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const CustomTile(),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 8,
                          ),
                      itemCount: 4),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 249,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const CustomCardItem(),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: 8,
                          ),
                      itemCount: 4),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
