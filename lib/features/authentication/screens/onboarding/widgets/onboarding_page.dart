import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../../utils/helpers/device_helpers.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key, required this.animation, required this.title, required this.subTitle
  });

  final String animation;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: UDeviceHelper.getAppBarHeight()),
      child: Column(
        children: [

          /// Animation
          Lottie.asset(animation),

          /// Title
          Text(title, style: Theme.of(context).textTheme.headlineMedium,),

          /// SubTitle
          Text(subTitle, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineMedium,),

        ],
      ),
    );
  }
}