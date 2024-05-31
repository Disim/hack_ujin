import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hack_ujin/app/utils/widgets/images/images_widgets.dart';
import 'package:hack_ujin/app/utils/widgets/loading_bar/loading_bar.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GetBuilder<RegisterController>(
                builder: (_) {
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
                              controller: _.usernameController,
                              decoration:
                                  const InputDecoration(label: Text('Логин')),
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (GetUtils.isUsername(value!)) {
                                  return null;
                                } else {
                                  return 'Придумайте логин (латиница)';
                                }
                              },
                            ),
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
                              decoration:
                                  const InputDecoration(label: Text('Пароль')),
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
                            ),
                            const SizedBox(height: 12),
                            TextFormField(
                              controller: _.repeatPasswordController,
                              decoration: const InputDecoration(
                                  label: Text('Повторите пароль')),
                              obscureText: true,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (_.passwordController.text == value) {
                                  return null;
                                } else {
                                  return 'Пароли должны совпадать';
                                }
                              },
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () => _.onRegister(),
                              child: const Text('Регистрация'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Obx(
            () => LoadingBar(
              loading: controller.loading,
            ),
          ),
        ],
      ),
    );
  }
}
