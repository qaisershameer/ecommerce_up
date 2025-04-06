import 'package:e_commerce/features/personalization/screens/address/address.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/settings_menu_tile.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/user_profile_tile.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_primary_header.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// User Profile Primary Header
            UProfilePrimaryHeader(),
            SizedBox(height: USizes.spaceBtwItems),

            /// Details
            Padding(
              padding: const EdgeInsets.all(USizes.defaultSpace),
              child: Column(
                children: [
                  /// User Profile Details
                  UserProfileTile(),

                  /// Account Settings Heading
                  USectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),

                  /// Settings Menu

                  /// My Addresses
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set shopping delivery address',
                    onTap: () => Get.to(() => AddressScreen()),
                  ),

                  /// My Cart
                  SettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subtitle: 'Add remove products to move checkout',
                      onTap: () {}),

                  /// My Orders
                  SettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subtitle: 'In-progress and completed orders',
                      onTap: () {}),
                  SizedBox(
                    height: USizes.spaceBtwSections,
                  ),

                  /// Logout
                  SizedBox(
                    width: double.infinity,
                    child:
                        OutlinedButton(onPressed: () {}, child: Text('Logout')),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
