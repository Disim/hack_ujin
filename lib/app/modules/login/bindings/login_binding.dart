import 'package:get/get.dart';
import 'package:hack_ujin/app/data/providers/network/user_data.dart';

import '../../../data/repositories/user_data.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(UserDataRepository(UserDataApi())),
    );
  }
}
