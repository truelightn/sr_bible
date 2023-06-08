import 'package:get/get.dart';

import '../controller/app_controller.dart';
import '../controller/auth_controller.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(YoutubeRepository(), permanent: true);
    Get.put(AuthController());
    Get.put(AppController());
  }
}