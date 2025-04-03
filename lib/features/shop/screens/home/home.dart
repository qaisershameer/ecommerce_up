import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/textfields/search_bar.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/images.dart';
import '../../controllers/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          /// -----[Upper Part]-----
          Stack(
            children: [
              /// Total Primary Header Height + 10
              SizedBox(
                height: USizes.homePrimaryHeaderHeight + 10,
              ),

              /// Primary Header Container
              UPrimaryHeaderContainer(
                height: USizes.homePrimaryHeaderHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// App Bar
                    UHomeAppBar(),
                    SizedBox(height: USizes.spaceBtwSections),

                    /// Home Categories
                    UHomeCategories(),
                  ],
                ),
              ),

              SizedBox(height: USizes.spaceBtwSections),

              /// Search Bar
              USearchBar(),
            ],
          ),

          /// -----[Lower Part]-----
          Padding(
            padding: const EdgeInsets.all(USizes.defaultSpace),
            child: Column(children: [
              /// Banners
              UPromoSlider(
                banners: [
                  UImages.homeBanner1,
                  UImages.homeBanner2,
                  UImages.homeBanner3,
                  UImages.homeBanner4,
                  UImages.homeBanner5,
                  UImages.homeBanner6
                ],
              ),
              SizedBox(height: USizes.spaceBtwSections),

              /// Section Heading
              USectionHeading(
                title: 'Popular Products',
                onPressed: () {},
              ),
              SizedBox(height: USizes.spaceBtwSections),

              /// Grid View of Product Cards
              UGridLayout(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return UProductCardVertical();
                  },)



            ]),
          ),
        ],
      ),
    ));
  }
}
