import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce/features/authentication/screens/forget_password/forget_password.dart';

import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Email
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.email,
          ),
        ),
        SizedBox(height: USizes.sm),

        /// Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),

        SizedBox(height: USizes.spaceBtwInputFields),

        /// Remember Me & Forget Password
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Remember Me
            Row(
              children: [
                Checkbox(value: true, onChanged: (value){}),
                Text(UTexts.rememberMe),
              ],
            ),

            SizedBox(height: USizes.spaceBtwInputFields / 2),

            /// Forget Password
            TextButton(onPressed: () => Get.to(() => ForgetPasswordScreen()), child: Text(UTexts.forgetPassword)),
          ],
        ),

        SizedBox(height: USizes.spaceBtwSections),

        /// Sign In
        UElevatedButton(onPressed: () => Get.to(() => NavigationMenu()), child: Text(UTexts.signIn)),
        SizedBox(height: USizes.spaceBtwInputFields / 2),

        /// Create Account
        SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Get.to(SignUpScreen()), child: Text(UTexts.createAccount))),
        SizedBox(height: USizes.sm),

      ],
    );
  }
}