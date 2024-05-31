import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hack_ujin/app/data/models/user_sign_dto/user_sign_dto.dart';
import 'package:hack_ujin/app/data/repositories/user_data.dart';

class UjinAuthorizationController extends GetxController {
  final UserDataRepository repository;
  UjinAuthorizationController(this.repository);

  final formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _loading = false.obs;
  bool get loading => _loading.value;

  void onLogin() async {
    if (formKey.currentState?.validate() ?? false) {
      _loading.value = true;
      await repository.loginUjin(
        UserSignDTO(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
      _loading.value = false;
    }
  }
}
