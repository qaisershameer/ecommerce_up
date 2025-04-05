import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class UProductThumbnailAndSlider extends StatelessWidget {
   const UProductThumbnailAndSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);
    return Container(
      color: dark ? UColors.darkGrey : UColors.light,
      child: Stack(
        children: [
          /// [Image] - Main Image Or Thumbnail
          SizedBox(
            height: 400,
            child: Padding(
              padding:
              const EdgeInsets.all(USizes.productImageRadius * 2),
              child: Center(
                  child:
                  Image(image: AssetImage(UImages.productImage4a))),
            ),
          ),

          /// Image Slider
          Positioned(
            left: USizes.defaultSpace,
            right: 0,
            bottom: 30,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      SizedBox(width: USizes.spaceBtwItems),
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => URoundedImage(
                      width: 80,
                      padding: EdgeInsets.all(USizes.sm),
                      border: Border.all(color: UColors.primary),
                      backgroundColor:
                      dark ? UColors.dark : UColors.white,
                      imageUrl: UImages.productImage34)),
            ),
          ),

          /// [AppBar] - Back Arrow & Favourite Button Heart
          UAppBar(
            showBackArrow: true,
            actions: [
              UCircularIcon(
                icon: Iconsax.heart5,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}