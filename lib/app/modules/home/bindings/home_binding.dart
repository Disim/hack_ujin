import 'package:get/get.dart';
import 'package:hack_ujin/app/data/providers/network/user_data.dart';
import 'package:hack_ujin/app/data/repositories/user_data.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(UserDataRepository(UserDataApi())),
    );
  }
}
