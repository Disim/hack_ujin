import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hack_ujin/app/routes/app_pages.dart';
import 'package:hack_ujin/app/utils/widgets/app_circle_avatar/circle_avatar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const AppCircleAvatar(),
          onPressed: () => Get.toNamed(Routes.PROFILE),
        ),
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
