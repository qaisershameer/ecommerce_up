import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/sortable_products.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----[AppBar]-----
        appBar: UAppBar(
            title:
            Text(UTexts.popularProducts, style: Theme.of(context).textTheme.headlineMedium),
            showBackArrow: true),

        ///-----[Body]-----
        body: SingleChildScrollView(
          padding: UPadding.screenPadding,
          child: USortableProducts(),
        )
    );
  }
}


