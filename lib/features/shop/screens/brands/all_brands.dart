import 'package:e_commerce/features/shop/screens/brands/brand_products.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/brands/brand_card.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/keys.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----[AppBar]-----
        appBar: UAppBar(
            title:
            Text(UTexts.popularBrands, style: Theme.of(context).textTheme.headlineSmall),
            showBackArrow: true),

        ///-----[Body]-----
        body: SingleChildScrollView(
          padding: UPadding.screenPadding,
          child: Column(
            children: [

              USectionHeading(title: 'Brands', showActionButton: false),
              SizedBox(height: USizes.spaceBtwItems),

              UGridLayout(
                  itemCount: 20,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) =>
                      UBrandCard(onTap: () => Get.to(() => BrandProductsScreen()), ))
            ],
          ),
        )
    );
  }
}
