import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/texts.dart';

class UBillingAddressSection extends StatelessWidget {
  const UBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// [Text] - Billing Address
        USectionHeading(title: UTexts.billingAddress, buttonTitle: UTexts.change, onPressed: (){}),
        SizedBox(height: USizes.spaceBtwItemsHalf),

        /// Name
        Text(UTexts.qrDevTeam, style: Theme.of(context).textTheme.titleLarge),
        SizedBox(height: USizes.spaceBtwItemsHalf),

        /// Phone Number
        Row(
          children: [
            Icon(Icons.phone, size: USizes.iconSm, color: UColors.darkerGrey),
            SizedBox(width: USizes.spaceBtwItems),
            Text(UTexts.qrdPhone),
          ],
        ),
        SizedBox(height: USizes.spaceBtwItemsHalf),

        /// Address
        Row(
          children: [
            Icon(Icons.location_history, size: USizes.iconSm, color: UColors.darkerGrey),
            SizedBox(width: USizes.spaceBtwItems),
            Expanded(child: Text(UTexts.qrdAddress, softWrap: true)),
          ],
        ),

      ],
    );
  }
}
