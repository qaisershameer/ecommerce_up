import 'package:e_commerce/features/shop/screens/checkout/checkout.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/common/widgets/button/elevated_button.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----[AppBar]-----
      appBar: UAppBar(
          title:
              Text('Cart', style: Theme.of(context).textTheme.headlineMedium),
          showBackArrow: true),

      ///-----[Body]-----
      body: UCartItems(),

      ///-----[Bottom Navigation Bar]-----
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UElevatedButton(
            onPressed: () => Get.to(() => CheckoutScreen()),
            child: Text('Checkout \$ 12,345.67')),
      ),
    );
  }
}
