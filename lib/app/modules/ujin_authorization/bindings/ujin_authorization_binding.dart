import 'package:get/get.dart';
import 'package:hack_ujin/app/data/providers/network/user_data.dart';
import 'package:hack_ujin/app/data/repositories/user_data.dart';

import '../controllers/ujin_authorization_controller.dart';

class UjinAuthorizationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UjinAuthorizationController>(
      () => UjinAuthorizationController(UserDataRepository(UserDataApi())),
    );
  }
}
