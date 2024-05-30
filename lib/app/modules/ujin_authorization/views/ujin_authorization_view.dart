import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ujin_authorization_controller.dart';

class UjinAuthorizationView extends GetView<UjinAuthorizationController> {
  const UjinAuthorizationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UjinAuthorizationView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UjinAuthorizationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
