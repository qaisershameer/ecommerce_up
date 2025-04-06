import 'package:e_commerce/common/widgets/icons/circular_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UBottomAddToCart extends StatelessWidget {
  const UBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = UHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: USizes.defaultSpace, vertical: USizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? UColors.darkerGrey : UColors.light,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(USizes.cardRadiusLg),
            topRight: Radius.circular(USizes.cardRadiusLg),
          )),
      child: Row(
        children: [
          /// Decrement Icon Button
          UCircularIcon(
              icon: Iconsax.minus,
              backgroundColor: UColors.darkerGrey,
              width: 40,
              height: 40,
              color: UColors.white),
          SizedBox(width: USizes.spaceBtwItems),

          /// Text
          Text('2', style: Theme.of(context).textTheme.titleSmall),
          SizedBox(width: USizes.spaceBtwItems),

          /// Increment Icon Button
          UCircularIcon(
              icon: Iconsax.add,
              backgroundColor: UColors.darkerGrey,
              width: 40,
              height: 40,
              color: UColors.white),

          Spacer(),

          /// Add To Cart Button
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(USizes.md),
                backgroundColor: UColors.black,
                side: BorderSide(color: UColors.black),
              ),
              child: Row(
                children: [
                  /// Cart Button Icon
                  Icon(Iconsax.shopping_bag),
                  SizedBox(width: USizes.spaceBtwItems / 2),

                  /// Cart Button Text
                  Text('Add to Cart'),
                ],
              ))
        ],
      ),
    );
  }
}
