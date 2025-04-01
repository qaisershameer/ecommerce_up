import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/utils/constants/texts.dart';
import 'package:flutter/material.dart';

import '../../../../common/style/padding.dart';
import '../../../../common/widgets/button/social_buttons.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../utils/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: UPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///-----[Header]-----
              /// Title
              Text(UTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: USizes.spaceBtwSections),

              ///-----[Form]-----
              SignUpForm(),
              SizedBox(height: USizes.spaceBtwSections),

              ///-----[Divider]-----
              UFormDivider(title: UTexts.orSignupWith),
              SizedBox(height: USizes.spaceBtwSections),

              ///-----[Footer]-----
              /// Social Buttons
              USocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

