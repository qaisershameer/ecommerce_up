import 'package:get/get.dart';
import '../utils/helpers/network_manager.dart';

class UBindings extends Bindings{

  @override
  void dependencies() {
    Get.put(NetworkManager());
  }


}