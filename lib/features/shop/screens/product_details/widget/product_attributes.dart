import 'package:e_commerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts.dart';

class UProductAttributes extends StatelessWidget {
  const UProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        /// Selected Attributes Pricing & Description
        URoundedContainer(padding: EdgeInsets.all(USizes.md),
        backgroundColor: dark ? UColors.darkerGrey : UColors.grey,
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// Title // Price // Stock
            Row(
              children: [

                /// [Text] - Variation Heading
                USectionHeading(title: UTexts.variations, showActionButton: false),
                SizedBox(width: USizes.spaceBtwItems),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    /// Price // Sale Price // Actual Price
                    Row(
                      children: [

                        /// [Text] - Price
                        UProductTitleText(title: UTexts.price, smallSize: true),

                        /// Actual Price
                        Text('250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                        SizedBox(width: USizes.spaceBtwItems),

                        /// Sale Price
                        UProductPriceText(price: '200')
                      ],
                    ),

                    /// Stock Status
                    Row(
                      children: [

                        /// [Text] - Stock
                        UProductTitleText(title: UTexts.stock, smallSize: true),

                        /// [Text] - In Stock
                        Text(UTexts.stockIn, style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                  ],
                )

              ],
            ),

            /// Attribute Description
            UProductTitleText(title: 'This is a product of iPhone 16 with 512 GB', smallSize: true, maxLines: 4,) ,
          ],
        )
          ),
        SizedBox(height: USizes.spaceBtwItems),

        /// Attributes // Colors // ChoiceChips Round-Circle
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// [Text] - Colors
            USectionHeading(title: 'Colors', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItemsHalf),

            /// ChoiceChip Round Circle Color
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(text: 'Red', selected: true, onSelected: (value){}),
                UChoiceChip(text: 'Pink', selected: false, onSelected: (value){}),
                UChoiceChip(text: 'Green', selected: false, onSelected: (value){}),
                UChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                UChoiceChip(text: 'Orange', selected: false, onSelected: (value){}),
                UChoiceChip(text: 'Yellow', selected: false, onSelected: (value){})
              ],
            ),

          ],
        ),
        SizedBox(height: USizes.spaceBtwItemsHalf),

        /// Attributes // Sizes // ChoiceChips Rectangle
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// [Text] - Sizes
            USectionHeading(title: 'Sizes', showActionButton: false),
            SizedBox(height: USizes.spaceBtwItemsHalf),

            /// ChoiceChip Round Rectangle Size
            Wrap(
              spacing: USizes.sm,
              children: [
                UChoiceChip(text: 'Small', selected: true, onSelected: (value){}),
                UChoiceChip(text: 'Medium', selected: false, onSelected: (value){}),
                UChoiceChip(text: 'Large', selected: false, onSelected: (value){}),
                UChoiceChip(text: 'XL', selected: false, onSelected: (value){})
              ],
            ),

          ],
        ),

      ],
    );
  }
}
