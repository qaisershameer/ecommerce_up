import 'package:e_commerce/common/widgets/button/social_buttons.dart';
import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              /// Title & SubTitle
              ULoginHeader(),
              SizedBox(height: USizes.spaceBtwSections),
        
              ///-----[Form]-----
              ULoginForm(),
              SizedBox(height: USizes.spaceBtwSections),
        
              ///-----[Divider]-----
              UFormDivider(title: UTexts.orSignInWith),
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





