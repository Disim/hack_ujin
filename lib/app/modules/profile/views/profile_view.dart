import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hack_ujin/app/utils/widgets/app_circle_avatar/circle_avatar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => controller.onLogout(),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      // floatingActionButton: Obx(() {
      //   return FloatingActionButton(
      //     onPressed: () => controller.onChangeMode(),
      //     child: controller.editMode
      //         ? const Icon(Icons.save)
      //         : const Icon(Icons.edit),
      //   );
      // }),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 75,
                      width: 75,
                      child: AppCircleAvatar(),
                    ),
                    Center(
                      child: Obx(
                        () => Text(controller.name.value,
                            style: const TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => controller.onUjinAuthorization(),
                      child: const Text('Авторизоваться в Ujin'),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () => controller.onChangePassword(),
                      child: const Text('Сменить пароль'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
