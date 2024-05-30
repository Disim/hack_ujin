import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hack_ujin/app/utils/common.dart';

import 'app/data/providers/network/user_data.dart';
import 'app/data/repositories/user_data.dart';
import 'app/data/services/api_service.dart';
import 'app/data/services/auth_service.dart';
import 'app/data/services/data_storage_service.dart';
import 'app/data/services/token_storage_service.dart';
import 'app/data/services/user_service.dart';
import 'app/routes/app_pages.dart';

Future<void> initServices() async {
  log('init services');
  await Get.putAsync(() => TokenStorageService().init());
  await Get.putAsync(() => DataStorageService().init());
  await Get.putAsync(() => ApiService().init());
  await Get.putAsync(() => AuthService().init());
  await Get.putAsync(
      () => UserService(UserDataRepository(UserDataApi())).init());
}

void main() async {
  await initServices();
  runApp(
    GestureDetector(
      onTap: () => Common.dismissKeyboard(),
      child: GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    ),
  );
}
