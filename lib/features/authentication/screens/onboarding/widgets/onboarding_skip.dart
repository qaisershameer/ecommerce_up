import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/helpers/device_helpers.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Obx(
      () => controller.currentIndex.value == 2
          ? SizedBox()
          : Positioned(
              top: UDeviceHelper.getAppBarHeight(),
              right: 0,
              child: TextButton(
                  onPressed: controller.skipPage, child: Text('Skip'))),
    );
  }
}
