import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';

class UCategoryTab extends StatelessWidget {
  const UCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
          child: Column(
            children: [
              /// Brand Showcase 1
              UBrandShowcase(images: [
                UImages.productImage47,
                UImages.productImage43,
                UImages.productImage7
              ]),

              /// Brand Showcase 2
              UBrandShowcase(images: [
                UImages.productImage37,
                UImages.productImage32,
                UImages.productImage5
              ]),
              SizedBox(height: USizes.spaceBtwItems),

              /// You might like Section Heading
              USectionHeading(title: 'You might like', onPressed: () {}),

              /// Grid Layout Products
              UGridLayout(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return UProductCardVertical();
                },
              ),

              SizedBox(height: USizes.spaceBtwSections)

            ],
          ),
        ),
      ],
    );
  }
}
