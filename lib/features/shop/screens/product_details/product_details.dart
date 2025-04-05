import 'package:e_commerce/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/features/shop/screens/product_details/widget/product_thumbnail_and_slider.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      ///-----[Body]-----
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///-----[Product Image With Slider]-----
            UProductThumbnailAndSlider(),

            ///-----[Product Details]-----
            /// Price // Title // Stock // Brand
            UProductMetaData(),

            /// Attributes


            /// Checkout


            /// Description


          ],
        ),
      ),

      ///-----[Bottom Navigation Bar]-----
    );
  }
}


