import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hack_ujin/app/routes/app_pages.dart';
import 'package:hack_ujin/app/utils/widgets/images/images_widgets.dart';
import 'package:hack_ujin/app/utils/widgets/loading_bar/loading_bar.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GetBuilder<LoginController>(builder: (_) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Hero(tag: 'logo', child: teamLogo),
                    Form(
                      key: _.formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _.emailController,
                            decoration:
                                const InputDecoration(label: Text('Email')),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (GetUtils.isEmail(value!)) {
                                return null;
                              } else {
                                return 'Введите корректный Email';
                              }
                            },
                          ),
                          const SizedBox(height: 12),
                          TextFormField(
                            controller: _.passwordController,
                            obscureText: true,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (GetUtils.isLengthGreaterThan(value, 7)) {
                                return null;
                              } else {
                                return 'Пароль: минимум 8 символов.';
                              }
                            },
                            decoration:
                                const InputDecoration(label: Text('Пароль')),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () => controller.onLogin(),
                            child: const Text('Войти'),
                          ),
                          const SizedBox(height: 16),
                          const Text('Нет аккаунта?'),
                          TextButton(
                            onPressed: () => Get.toNamed(Routes.REGISTER),
                            child: const Text('Зарегистрироваться'),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
          Obx(
            () => LoadingBar(loading: controller.loading),
          ),
        ],
      ),
    );
  }
}
