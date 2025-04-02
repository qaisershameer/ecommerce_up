import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/shop/controllers/home/home_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';
import 'banners_dot_navigation.dart';

class UPromoSlider extends StatelessWidget {
  const UPromoSlider({super.key, required this.banners});

  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Column(
      children: [
        /// Slider
        CarouselSlider(
            items: banners.map((banner) => URoundedImage(imageUrl: banner),).toList(),
            options: CarouselOptions(viewportFraction: 1.0, onPageChanged: (index, reason) => controller.onPageChanged(index)),
          carouselController: controller.carouselController,
        ),
        SizedBox(height: USizes.spaceBtwItems),

        /// Dot Navigation
        BannersDotNavigation(),
      ],
    );
  }
}