import 'package:get/get.dart';
import 'package:hack_ujin/app/data/providers/network/user_data.dart';
import 'package:hack_ujin/app/data/repositories/user_data.dart';

import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(UserDataRepository(UserDataApi())),
    );
  }
}
