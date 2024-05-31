import 'package:get/get.dart';
import 'package:hack_ujin/app/data/services/auth_service.dart';
import 'package:hack_ujin/app/data/services/user_service.dart';
import 'package:hack_ujin/app/routes/app_pages.dart';

class ProfileController extends GetxController {
  final _editMode = false.obs;

  final name = ''.obs;
  // String get name => _name.value;

  get editMode => _editMode.value;

  @override
  void onReady() {
    super.onReady();
    name.value = Get.find<UserService>().user.value?.userName ?? '';
  }

  void onEdit() => _editMode.value = true;
  void onSave() => _editMode.value = false;

  void onUjinAuthorization() => Get.toNamed(Routes.UJIN_AUTHORIZATION);
  void onChangePassword() {}

  void onLogout() {
    var authService = Get.find<AuthService>();
    authService.logout();
  }

  void onChangeMode() => _editMode.value ? onSave() : onEdit();
}
