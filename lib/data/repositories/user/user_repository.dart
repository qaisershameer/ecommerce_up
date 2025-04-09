import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/utils/constants/keys.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../features/authentication/models/user_model.dart';
import '../../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  /// variable
  final _db = FirebaseFirestore.instance;

  /// Function to Store User Data
  Future<void> saveUserRecord(UserModel user) async {
    try {

      /// Save Data in User Collection
      await _db
          .collection(UKeys.userCollection)
          .doc(user.id)
          .set(user.toJson());

      /// Errors Exceptions
    } on FirebaseAuthException catch (e) {
      throw UFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw UFirebaseException(e.code).message;
    } on UFormatException catch (e) {
      throw UFormatException(e.message);
    } on FormatException catch (e) {
      throw UPlatformException(e.message);
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
