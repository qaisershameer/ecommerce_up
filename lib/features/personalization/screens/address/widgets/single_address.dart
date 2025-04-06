import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/custom_shapes/rounded_container.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class USingleAddress extends StatelessWidget {
  const USingleAddress({super.key, required this.isSelected});

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunctions.isDarkMode(context);

    ///-----[Address Container]-----
    return URoundedContainer(
      width: double.infinity,
      showBorder: true,
      backgroundColor: isSelected
          ? UColors.primary.withValues(alpha: 0.5)
          : Colors.transparent,
      borderColor: isSelected
          ? Colors.transparent
          : dark
              ? UColors.darkerGrey
              : UColors.grey,
      padding: EdgeInsets.all(USizes.md),
      child: Stack(
        children: [
          /// Name // Phone // Address
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Heading User Name
              Text(UTexts.qrDevTeam,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
              SizedBox(height: USizes.spaceBtwItems / 2),

              /// User Phone Number
              Text(UTexts.qrdPhone,
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              SizedBox(height: USizes.spaceBtwItems / 2),

              /// User Address
              Text(UTexts.qrdAddress),
            ],
          ),

          /// Selected Address Icon
          if (isSelected)
            Positioned(
                top: 0, bottom: 0, right: 6, child: Icon(Iconsax.tick_circle5))
        ],
      ),
    );
  }
}
