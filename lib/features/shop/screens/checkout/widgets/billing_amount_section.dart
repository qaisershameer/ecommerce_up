import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class UBillingAmountSection extends StatelessWidget {
  const UBillingAmountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// Sub Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(UTexts.subTotal, style: Theme.of(context).textTheme.bodyMedium),
            Text('\$345.05', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItemsHalf),

        /// Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(UTexts.shippingFee, style: Theme.of(context).textTheme.bodyMedium),
            Text('\$12.10', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItemsHalf),

        /// Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(UTexts.taxFee, style: Theme.of(context).textTheme.bodyMedium),
            Text('\$63.15', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItemsHalf),

        /// Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(UTexts.orderTotal, style: Theme.of(context).textTheme.titleMedium),
            Text('\$420.30', style: Theme.of(context).textTheme.titleMedium),
          ],
        )

      ],
    );
  }
}