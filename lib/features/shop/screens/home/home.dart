import 'package:flutter/material.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/primary_header_container.dart';
import '../../../../common/widgets/textfields/search_bar.dart';
import '../../../../utils/constants/images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(HomeController());
    return Scaffold(
        body: Column(
      children: [
        /// -----[Upper Part]-----
        Stack(
          children: [
            /// Total Primary Header Height + 10
            SizedBox(
              height: USizes.homePrimaryHeaderHeight + 10,
            ),

            /// Primary Header
            UPrimaryHeaderContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// App Bar
                  UHomeAppBar(),

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

        /// -----[Upper Part]-----
        /// Banners
        Padding(
          padding: const EdgeInsets.all(USizes.defaultSpace),
          child: UPromoSlider(
            banners: [
              UImages.homeBanner1,
              UImages.homeBanner2,
              UImages.homeBanner3,
              UImages.homeBanner4,
              UImages.homeBanner5,
              UImages.homeBanner6
            ],
          ),
        )
      ],
    ));
  }
}
