import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hack_ujin/app/data/services/auth_service.dart';
import 'package:hack_ujin/app/utils/widgets/app_dialog/app_dialog.dart';

import '../../../data/models/user_sign_dto/user_sign_dto.dart';
import '../../../data/repositories/user_data.dart';

class RegisterController extends GetxController {
  final UserDataRepository repository;
  RegisterController(this.repository);

  final formKey = GlobalKey<FormState>();

  final _loading = false.obs;
  bool get loading => _loading.value;

  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();

  void onRegister() async {
    if (formKey.currentState?.validate() ?? false) {
      _loading.value = true;
      var authService = Get.find<AuthService>();
      var bytes = utf8.encode(passwordController.text);
      var password = sha1.convert(bytes);
      final response = await authService.register(
        UserSignDTO(
          username: usernameController.text,
          email: emailController.text,
          password: password.toString(),
        ),
      );
      if (response == 0) {
        Get.back();
        Get.dialog(
          const AppDialog(
            title: 'Подтвердите почту',
            middleText:
                'На вашу почту отправлено письмо. Подтвердите почту, после чего, войдите в свой аккаунт в приложении.',
          ),
        );
      } else {
        response.printError();
      }
      _loading.value = false;
    }
  }
}
