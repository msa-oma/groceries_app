import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grociries_app/core/util/app_colors.dart';
import 'package:grociries_app/features/product/cubit/product_cubit.dart';

import '../../../core/widgets/custom_image_widget.dart';

class SingleProductScreen extends StatelessWidget {
  const SingleProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => ProductCubit(),
        child: Scaffold(
          body: BlocConsumer<ProductCubit, ProductState>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = ProductCubit.get(context);
              return Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          child: Swiper(
                            itemCount: 3,
                            itemBuilder: (context, index) =>
                                const CustomImageWidget(
                                    imageUrl:
                                        "https://img.freepik.com/free-vector/watercolor-food-facebook-cover_23-2149175710.jpg"),
                            pagination: const SwiperPagination(
                                alignment: Alignment.bottomCenter,
                                builder: DotSwiperPaginationBuilder(
                                  activeColor: AppColors.grayEarthy,
                                )),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: AppColors.blackCharcoal,
                              size: 30,
                            ),
                            Icon(
                              Icons.file_upload_outlined,
                              color: AppColors.blackCharcoal,
                              size: 30,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Naturel Red Apple',
                              style: TextStyle(
                                  color: AppColors.kFontColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '1kg, Price',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            )
                          ],
                        ),
                        Icon(
                          (Icons.favorite_border),
                          size: 30,
                          color: AppColors.kHintColor,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.remove,
                              size: 30,
                              color: AppColors.kHintColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: AppColors.kHintColor, width: 2)),
                              child: const Text(
                                '1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.add,
                              size: 30,
                              color: AppColors.greenGrass,
                            )
                          ],
                        ),
                        const Text(
                          '\$ 4.99',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const Divider(
                    endIndent: 20,
                    indent: 20,
                  ),
                  InkWell(
                    onTap: () {
                      cubit.changeDetailsShow();
                      // setState(() {
                      //   isDetailShow=!isDetailShow;
                      // });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Product Detail',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          cubit.isDetailsShow
                              ? const Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 40,
                                )
                              : const Icon(Icons.arrow_forward_ios_outlined)
                        ],
                      ),
                    ),
                  ),
                  if (cubit.isDetailsShow)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: const Text(
                        'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                        style: TextStyle(
                            color: AppColors.kHintColor, fontSize: 15),
                      ),
                    )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
