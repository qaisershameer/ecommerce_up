import 'package:e_commerce/data/repositories/auth/auth_repository.dart';
import 'package:e_commerce/data/repositories/user/user_repository.dart';
import 'package:e_commerce/features/authentication/models/user_model.dart';
import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/utils/helpers/network_manager.dart';
import 'package:e_commerce/utils/popups/full_screen_loader.dart';
import 'package:e_commerce/utils/popups/snackbar_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/texts.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  /// Variables
  final signUpFormKey = GlobalKey<FormState>();
  RxBool isPasswordVisible = false.obs;
  RxBool privacyPolicy = false.obs;

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final phoneNumber = TextEditingController();
  final password = TextEditingController();

  /// Function to register the user email and password
  Future<void> registerUser() async {
    try {

      // Start Loading
      UFullScreenLoader.openLoadingDialog(UTexts.loadingText);

      // Check Internet Connectivity
      bool isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        UFullScreenLoader.stopLoading();
        USnackBarHelpers.warningSnackBar(title: UTexts.noInternet);
        return;
      }

      // Check Privacy Policy
      if(!privacyPolicy.value){
        UFullScreenLoader.stopLoading();
        USnackBarHelpers.warningSnackBar(title: UTexts.acceptPrivacy, message: UTexts.privacyMessage);
        return;
      }

      // Form Validation
      if(!signUpFormKey.currentState!.validate()) return;


      // Register the User using Firebase Authentication
      UserCredential data = await AuthRepository.instance.registerUser(email.text.trim(), password.text.trim());

      // Create User Model
      UserModel userModel = UserModel(
          id: data.user!.uid,
          firstName: firstName.text,
          lastName: lastName.text,
          userName: '${firstName.text}${lastName.text}7861',
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '',
      );


      // Save User Record
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(userModel);

      // Success Message
      USnackBarHelpers.successSnackBar(title: UTexts.congrats, message: UTexts.createAccountMessage);

      // Stop Loading
      UFullScreenLoader.stopLoading();

      // Redirect to Verify Email Screen
      Get.to(() => VerifyEmailScreen());
      
    } catch (e) {
      USnackBarHelpers.errorSnackBar(title: 'Error', message: e.toString());
    }
  }
}
