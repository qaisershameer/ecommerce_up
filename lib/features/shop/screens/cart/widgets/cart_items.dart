import 'package:flutter/material.dart';

import '../../../../../common/style/padding.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/products/cart/product_quantity_with_add_remove.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class UCartItems extends StatelessWidget {
  const UCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UPadding.screenPadding,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: USizes.spaceBtwItems),
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Column(
              children: [

                /// Cart Item
                UCartItem(),
                if(showAddRemoveButtons) SizedBox(height: USizes.spaceBtwItems),

                /// Price // Counter // Buttons - +
                if(showAddRemoveButtons) Row(
                  children: [

                    /// Extra Space from Left Side
                    SizedBox(width: 70.0),
                    SizedBox(height: USizes.spaceBtwItems),

                    /// Product with Quantity Buttons + -
                    UProductQuantityWithAddRemove(),
                    Spacer(),

                    /// Product Price
                    UProductPriceText(price: '325')

                  ],
                ),

              ],
            );
          }),
    );
  }
}