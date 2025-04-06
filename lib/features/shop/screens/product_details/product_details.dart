import 'package:e_commerce/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/product_details/widget/bottom_add_to_cart.dart';
import 'package:e_commerce/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:e_commerce/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/features/shop/screens/product_details/widget/product_thumbnail_and_slider.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/style/padding.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----[Body]-----
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///-----[Product Image With Slider]-----
            UProductThumbnailAndSlider(),

            ///-----[Product Details]-----
            Padding(
              padding: UPadding.screenPadding,
              child: Column(
                children: [

                  /// Price // Title // Stock // Brand
                  UProductMetaData(),
                  SizedBox(height: USizes.spaceBtwItems),

                  /// Attributes
                  UProductAttributes(),
                  SizedBox(height: USizes.spaceBtwSections),

                  /// Checkout
                  UElevatedButton(onPressed: (){}, child: Text('Checkout')),
                  SizedBox(height: USizes.spaceBtwSections),

                  /// Description Heading
                  USectionHeading(title: 'Description', showActionButton: false),
                  SizedBox(height: USizes.spaceBtwItems),

                  /// Description Content with // Read More // Less
                  ReadMoreText('This is a product description of BATA brand shoes. There are more things that can be added but im here to guide you that it will be very huge text as huge description as you can read it carefully.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show More',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                  ),

                  SizedBox(height: USizes.spaceBtwSections),
                ],
              ),
            )

          ],
        ),
      ),

      ///-----[Bottom Navigation Bar]-----
      bottomNavigationBar: UBottomAddToCart()
    );
  }
}


