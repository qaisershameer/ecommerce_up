import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../icons/circular_icon.dart';

class UProductQuantityWithAddRemove extends StatelessWidget {
  const UProductQuantityWithAddRemove({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        /// Decrement Icon
        UCircularIcon(
            icon: Iconsax.minus,
            size: USizes.iconSm,
            color: dark ? UColors.white : UColors.black,
            backgroundColor: dark ? UColors.darkerGrey : UColors.light),
        SizedBox(width: USizes.spaceBtwItems),

        /// Counter
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(width: USizes.spaceBtwItems),

        /// Increment Icon
        UCircularIcon(
            icon: Iconsax.add,
            size: USizes.iconSm,
            color: dark ? UColors.white : UColors.primary,
            backgroundColor: dark ? UColors.darkerGrey : UColors.light)
      ],
    );
  }
}
