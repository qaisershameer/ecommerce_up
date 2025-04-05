import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/features/personalization/screens/edit_profile/edit_profile.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title:
          Text(UTexts.qrDevTeam, style: Theme.of(context).textTheme.headlineSmall),
      subtitle: Text(UTexts.qrdEmail,
          style: Theme.of(context).textTheme.bodyMedium),
      trailing: IconButton(
          onPressed: () => Get.to(() => EditProfileScreen()),
          icon: Icon(Iconsax.edit)),
    );
  }
}
