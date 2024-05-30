import 'package:get/get.dart';

import '../controllers/ujin_authorization_controller.dart';

class UjinAuthorizationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UjinAuthorizationController>(
      () => UjinAuthorizationController(),
    );
  }
}
