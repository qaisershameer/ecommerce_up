import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/features/personalization/screens/edit_profile/widgets/user_detail_row.dart';
import 'package:e_commerce/features/personalization/screens/edit_profile/widgets/user_profile_with_edit_icon.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            children: [
              /// User Profile with Edit Icon
              UserProfileWithEditIcon(),
              SizedBox(height: USizes.spaceBtwSections),

              /// Divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              /// Account Settings Heading
              USectionHeading(title: 'Account Settings', showActionButton: false),
              SizedBox(height: USizes.spaceBtwItems),

              /// Account Settings // Name // User Name
              UserDetailRow(title: 'Name', value: UTexts.qrDevTeam, onTap: () {}),
              UserDetailRow(title: 'User Name', value: UTexts.qrDevTeam, onTap: () {}),
              SizedBox(height: USizes.spaceBtwItems),

              /// Divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              /// Profile Settings Heading
              USectionHeading(
                  title: 'Profile Settings', showActionButton: false),
              SizedBox(height: USizes.spaceBtwItems),

              /// Profile Settings // ID // Email // Phone // Gender
              UserDetailRow(title: 'User ID', value: UTexts.qrdId, onTap: () {}),
              UserDetailRow(title: 'Email', value: UTexts.qrdEmail, onTap: () {}),
              UserDetailRow(title: 'Phone', value: UTexts.qrdPhone, onTap: () {}),
              UserDetailRow(title: 'Gender', value: UTexts.qrdGender, onTap: () {}),
              SizedBox(height: USizes.spaceBtwItems),

              /// Divider
              Divider(),
              SizedBox(height: USizes.spaceBtwItems),

              /// Close Account Button
              TextButton(
                  onPressed: Get.back,
                  child: Text(UTexts.closeAccount, style: TextStyle(color: Colors.red, fontSize: 14)))
            ],
          ),
        ),
      ),
    );
  }
}
