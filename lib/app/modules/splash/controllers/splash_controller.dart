import 'package:get/get.dart';
import 'package:hack_ujin/app/routes/app_pages.dart';

import '../../../data/services/auth_service.dart';
import '../../../data/services/user_service.dart';

class SplashController extends GetxController {
  final userService = Get.find<UserService>();

  final title = 'Hack UJIN';

  AuthService get authService => AuthService.instance;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    if (authService.isLogged) {
      await userService.getUserData();
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offNamed(Routes.LOGIN);
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
