import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hack_ujin/app/utils/widgets/images/old/images_widgets.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 150,
              child: Hero(tag: 'logo', child: teamLogo),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                bottom: Get.context!.mediaQueryPadding.bottom + 10,
              ),
              child: const CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
