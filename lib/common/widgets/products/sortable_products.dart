import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/keys.dart';
import '../../../utils/constants/sizes.dart';
import '../layouts/grid_layout.dart';

class USortableProducts extends StatelessWidget {
  const USortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// Filter Fields
        DropdownButtonFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.sort)
            ),
            onChanged: (value){},
            items: UKeys.filterFields.map((filter) {
              return DropdownMenuItem(value: filter, child: Text(filter));
            },).toList()
        ),
        SizedBox(height: USizes.spaceBtwSections),

        /// Products
        UGridLayout(itemCount: 20, itemBuilder: (context, index) => UProductCardVertical(),)
      ],
    );
  }
}