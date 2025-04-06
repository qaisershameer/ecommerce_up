import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/privacy_policy_checkbox.dart';
import '../../../../../common/widgets/button/elevated_button.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// First Name & Last Name
        Row(
          children: [
            /// First Name
            Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: UTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                )),
            SizedBox(width: USizes.spaceBtwInputFields),

            /// Last Name
            Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: UTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                )),
          ],
        ),

        SizedBox(height: USizes.spaceBtwInputFields),

        /// Email
        TextFormField(
          decoration: InputDecoration(
              labelText: UTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call)),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),

        /// Phone Number
        TextFormField(
          decoration: InputDecoration(
              labelText: UTexts.email,
              prefixIcon: Icon(Iconsax.direct_right)),
        ),
        SizedBox(height: USizes.spaceBtwInputFields),

        /// Password
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: USizes.spaceBtwInputFields / 2),

        /// Privacy Policy Checkbox
        UPrivacyPolicyCheckbox(),
        SizedBox(height: USizes.spaceBtwItems),

        /// Create Account
        UElevatedButton(onPressed: () => Get.to(() => VerifyEmailScreen()), child: Text(UTexts.createAccount))

      ],
    );
  }
}
