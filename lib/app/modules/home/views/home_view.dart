import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hack_ujin/app/routes/app_pages.dart';
import 'package:hack_ujin/app/utils/widgets/app_circle_avatar/circle_avatar.dart';
import 'package:hack_ujin/app/utils/widgets/images/images_widgets.dart';

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
        title: const Text('Главная'),
        centerTitle: true,
      ),
      body: Center(
        child: Hero(tag: 'logo', child: teamLogo),
      ),
    );
  }
}
