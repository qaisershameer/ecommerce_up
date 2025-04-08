import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/brands/brand_card.dart';
import 'package:e_commerce/common/widgets/products/sortable_products.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/texts.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----[AppBar]-----
      appBar: UAppBar(
          title:
          Text('Brands', style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),

      ///-----[Body]-----
      body: SingleChildScrollView(
        child: Padding(padding: UPadding.screenPadding,
        child: Column(
          children: [

            /// Brand
            UBrandCard(),
            SizedBox(height: USizes.spaceBtwSections),

            /// Brand Products
            USortableProducts()

          ],
        ),),
      ),
    );
  }
}
