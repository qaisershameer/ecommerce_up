import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/common/widgets/screens/success_screen.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/constants/images.dart';
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_address.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widgets/payment_section.dart';
import 'package:e_commerce/utils/constants/sizes.dart';

import '../../../../common/widgets/button/elevated_button.dart';
import '../../../../common/widgets/textfields/promo_code.dart';
import '../../../../utils/constants/texts.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----[AppBar]-----
      appBar: UAppBar(
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),

      ///-----[Body]-----
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              /// Cart Items
              UCartItems(showAddRemoveButtons: false),
              // SizedBox(height: USizes.spaceBtwItemsHalf),

              /// Promo Code - Text Field with Button
              UPromoCodeField(),
              SizedBox(height: USizes.spaceBtwItemsHalf),

              /// Billing Section
              URoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(USizes.md),
                backgroundColor: Colors.transparent,
                child: Column(
                  children: [

                    /// Amount
                    UBillingAmountSection(),
                    SizedBox(height: USizes.spaceBtwItemsHalf),

                    /// Payment
                    UBillingPaymentSection(),
                    SizedBox(height: USizes.spaceBtwItemsHalf),

                    /// Address
                    UBillingAddressSection(),

                  ],
                ),
              )

            ],
          ),
        ),
      ),

      ///-----[Bottom Navigation Bar]-----
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: UElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                title: UTexts.paymentSuccess,
                subTitle: UTexts.itemShipped,
                image: UImages.successfulPaymentIcon,
                onTap: () => Get.offAll(() => NavigationMenu()))),
            child: Text('${UTexts.checkout} \$ 12,345.67')),
      ),

    );
  }
}



