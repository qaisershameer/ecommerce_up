import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        left: 0,
        right: 0,
        bottom: USizes.spaceBtwItems,
        child: UElevatedButton(
          onPressed: controller.nextPage,
          child: Obx(() => Text(controller.currentIndex.value == 2 ? 'Get Started' : 'Next')),
        ));
  }
}