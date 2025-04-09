import 'package:e_commerce/utils/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../utils/constants/sizes.dart';

class UAnimationLoader extends StatelessWidget {
  final String text;

  const UAnimationLoader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Animation
          Lottie.asset(UImages.loadingAnimation, width: Get.width * 0.8),
          const SizedBox(height: USizes.defaultSpace),

          /// Title
          Text(text, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
          const SizedBox(height: USizes.defaultSpace),
        ],
      ),
    );
  }
}
