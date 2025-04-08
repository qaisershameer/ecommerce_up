import 'package:e_commerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UOrdersListItems extends StatelessWidget {
  const UOrdersListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: USizes.spaceBtwItems),
      itemCount: 20,
        itemBuilder: (context, index) {
          return URoundedContainer(
            showBorder: true,
            backgroundColor: dark ? UColors.dark : UColors.light,
            padding: EdgeInsets.all(USizes.md),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// 1st - Row
                Row(
                  children: [
                    /// Ship Icon
                    Icon(Iconsax.ship),
                    SizedBox(width: USizes.spaceBtwItemsHalf),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Title
                          Text(UTexts.processing,
                              style: Theme.of(context).textTheme.bodyLarge!.apply(
                                  color: UColors.primary, fontWeightDelta: 1)),
                          SizedBox(width: USizes.spaceBtwItemsHalf),

                          /// Date
                          Text(UTexts.dated,
                              style: Theme.of(context).textTheme.headlineSmall),
                        ],
                      ),
                    ),

                    /// Right Arrow Icon
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.arrow_right_34,
                          size: USizes.iconSm,
                        ))
                  ],
                ),
                SizedBox(height: USizes.spaceBtwItems),

                /// 2nd - Row
                Row(
                  children: [
                    Expanded(

                      /// Order
                      child: Row(
                        children: [

                          /// Tag Icon
                          Icon(Iconsax.tag),
                          SizedBox(width: USizes.spaceBtwItemsHalf),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// Order Label
                                Text(UTexts.order,
                                    style:
                                    Theme.of(context).textTheme.labelMedium),
                                SizedBox(width: USizes.spaceBtwItemsHalf),

                                /// Order Value
                                Text(UTexts.orderValue,
                                    style:
                                    Theme.of(context).textTheme.titleMedium),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    /// Shipping
                    Expanded(
                      child: Row(
                        children: [
                          /// Shipping Icon
                          Icon(Iconsax.calendar),
                          SizedBox(width: USizes.spaceBtwItemsHalf),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// Shipping Date Label
                                Text(UTexts.shippingDate,
                                    style:
                                    Theme.of(context).textTheme.labelMedium),
                                SizedBox(width: USizes.spaceBtwItemsHalf),

                                /// Shipping Date Value
                                Text(UTexts.dated,
                                    style:
                                    Theme.of(context).textTheme.titleMedium),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },);
  }
}
