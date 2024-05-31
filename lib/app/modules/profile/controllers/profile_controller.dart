import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hack_ujin/app/data/services/auth_service.dart';
import 'package:hack_ujin/app/data/services/user_service.dart';
import 'package:hack_ujin/app/routes/app_pages.dart';

class ProfileController extends GetxController {
  final _editMode = false.obs;

  final name = ''.obs;
  final emailController = TextEditingController();
  bool ujinAuthorized = false;

  get editMode => _editMode.value;

  @override
  void onReady() {
    super.onReady();
    name.value = Get.find<UserService>().user.value?.userName ?? '';
    emailController.text = Get.find<UserService>().user.value?.email ?? '';
    ujinAuthorized = Get.find<UserService>().user.value?.ujinToken != null;
  }

  void onEdit() => _editMode.value = true;
  void onSave() => _editMode.value = false;

  void onUjinAuthorization() =>
      ujinAuthorized ? Get.toNamed(Routes.UJIN_AUTHORIZATION) : null;
  void onChangePassword() {}

  void onLogout() {
    var authService = Get.find<AuthService>();
    authService.logout();
  }

  void onChangeMode() => _editMode.value ? onSave() : onEdit();
}
