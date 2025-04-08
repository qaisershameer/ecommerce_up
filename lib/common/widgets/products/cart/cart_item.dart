import 'package:flutter/material.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/images.dart';
import '../../../../utils/constants/sizes.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_with_verify_icon.dart';
import '../../texts/product_title_text.dart';

class UCartItem extends StatelessWidget {
  const UCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Product Image
        URoundedImage(
          imageUrl: UImages.productImage4a,
          height: 60.0,
          width: 60.0,
          padding: EdgeInsets.all(USizes.sm),
          backgroundColor: dark ? UColors.darkerGrey : UColors.light,
        ),
        SizedBox(width: USizes.spaceBtwItems),

        /// Brand // Product Name // Variation
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Brand
            UBrandTitleWithVerifyIcon(title: 'iPhone'),

            /// Title
            UProductTitleText(title: 'iPhone 16 Pro Max W'),

            /// Variation or Attributes
            RichText(
                text: TextSpan(children: [
              /// Color
              TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),

              /// Storage
              TextSpan(text: 'Storage ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: '512GB ', style: Theme.of(context).textTheme.bodyLarge),

            ])
            )
          ],
        ))
      ],
    );
  }
}
