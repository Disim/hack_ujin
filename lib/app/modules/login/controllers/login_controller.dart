import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hack_ujin/app/data/models/user_sign_dto/user_sign_dto.dart';
import 'package:hack_ujin/app/data/services/auth_service.dart';
import 'package:hack_ujin/app/routes/app_pages.dart';

import '../../../data/repositories/user_data.dart';

class LoginController extends GetxController {
  final UserDataRepository repository;
  LoginController(this.repository);

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _loading = false.obs;
  bool get loading => _loading.value;

  void onLogin() async {
    if (formKey.currentState?.validate() ?? false) {
      _loading.value = true;
      var authService = Get.find<AuthService>();
      var bytes = utf8.encode(passwordController.text);
      var password = sha1.convert(bytes);
      final response = await authService.login(
        UserSignDTO(
          username: 'test',
          email: emailController.text,
          password: password.toString(),
        ),
      );
      if (response == 0) {
        Get.offAllNamed(Routes.SPLASH);
      }

      _loading.value = false;
    }
  }
}
