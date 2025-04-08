import 'package:flutter/material.dart';
import 'package:e_commerce/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/texts.dart';

class UBillingPaymentSection extends StatelessWidget {
  const UBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Column(
      children: [

        /// [Text] - Payment Method
        USectionHeading(title: UTexts.paymentMethod, buttonTitle: UTexts.change, onPressed: (){}),
        SizedBox(height: USizes.spaceBtwItemsHalf),

        Row(
          children: [

            /// Payment Logo
            URoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? UColors.light : UColors.white,
              padding: EdgeInsets.all(USizes.sm),
              child: Image(image: AssetImage(UImages.googlePay)),
            ),
            SizedBox(width: USizes.spaceBtwItemsHalf),

            /// Payment Name
            Text(UTexts.googlePay, style: Theme.of(context).textTheme.bodyLarge),
            
          ],
        ),
      ],
    );
  }
}
