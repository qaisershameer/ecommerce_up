import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----[AppBar]-----
      appBar: UAppBar(
          title:
              Text('Sports', style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),

      ///-----[Body]-----
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              /// Sub Category 01
              USectionHeading(title: 'Sports Shoes', onPressed: () {}),
              SizedBox(height: USizes.spaceBtwItemsHalf),

              /// Horizontal Product Card
              SizedBox(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(width: USizes.spaceBtwItemsHalf),
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return UProductCardHorizontal();
                    },
                  )),

              /// Sub Category 02
              USectionHeading(title: 'Sports Kits', onPressed: () {}),
              SizedBox(height: USizes.spaceBtwItemsHalf),

              /// Horizontal Product Card
              SizedBox(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(width: USizes.spaceBtwItemsHalf),
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return UProductCardHorizontal();
                    },
                  )),

              /// Sub Category 03
              USectionHeading(title: 'Sports Packs', onPressed: () {}),
              SizedBox(height: USizes.spaceBtwItemsHalf),

              /// Horizontal Product Card
              SizedBox(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        SizedBox(width: USizes.spaceBtwItemsHalf),
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return UProductCardHorizontal();
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
