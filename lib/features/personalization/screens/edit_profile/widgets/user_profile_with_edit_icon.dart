import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/user_profile_logo.dart';

class UserProfileWithEditIcon extends StatelessWidget {
  const UserProfileWithEditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// User Profile Logo
        Center(child: UserProfileLogo()),

        /// User Profile Edit Icon
        Positioned(
            top: 50,
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(child: UCircularIcon(icon: Iconsax.edit, size: 25)))
      ],
    );
  }
}
