import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hack_ujin/app/data/services/auth_service.dart';

class ProfileController extends GetxController {
  final _editMode = false.obs;

  final TextEditingController nameController = TextEditingController();

  get editMode => _editMode.value;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onEdit() => _editMode.value = true;
  void onSave() => _editMode.value = false;

  void onChangePassword() {}

  void onLogout() {
    var authService = Get.find<AuthService>();
    authService.logout();
  }

  void onChangeMode() => _editMode.value ? onSave() : onEdit();
}
