import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/themes/app_colors.dart';
import '../core/themes/app_text_theme.dart';

class Common {
  Common._();

  static void showError(String error) {
    Get.showSnackbar(
      GetSnackBar(
        messageText: Text(
          error,
          style: AppTextStyles.body.w700.s16.baseWhiteColor,
        ),
        margin: const EdgeInsets.all(20),
        borderRadius: 24,
        backgroundColor: AppColors.error,
        duration: const Duration(milliseconds: 2000),
      ),
    );
  }

  static void showLoading() {
    Get.dialog(
      Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: AppColors.gray,
          ),
          child: const CircularProgressIndicator(
            color: AppColors.error,
          ),
        ),
      ),
      barrierColor: AppColors.baseWhite.withOpacity(0.8),
      barrierDismissible: true,
      transitionCurve: Curves.easeInOutBack,
    );
  }

  static Future<bool> showConfirm({String? title, String? content}) async {
    bool result = false;
    await Get.dialog(
      Platform.isIOS
          ? CupertinoAlertDialog(
              title: Text(
                title ?? 'Delete confirmation',
                style: AppTextStyles.body.w700.s16.baseWhiteColor,
                textAlign: TextAlign.center,
              ),
              content: Text(
                'Are you sure you want to delete this ${content ?? "feature"}?',
                style: AppTextStyles.body.w400.s16.baseWhiteColor,
                textAlign: TextAlign.center,
              ),
              actions: [
                CupertinoButton(
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                  onPressed: () {
                    if (Get.isDialogOpen!) Get.back();
                  },
                ),
                CupertinoButton(
                  child: const Text('Confirm'),
                  onPressed: () {
                    result = true;
                    if (Get.isDialogOpen!) Get.back();
                  },
                ),
              ],
            )
          : AlertDialog(
              title: Text(
                title ?? 'Delete confirmation',
                style: AppTextStyles.body.w700.s16.baseWhiteColor,
              ),
              content: Text(
                title ?? 'Are you sure you want to delete this feature?',
                style: AppTextStyles.body.w400.s16.baseWhiteColor,
              ),
              actions: [
                CupertinoButton(
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                  onPressed: () {
                    if (Get.isDialogOpen!) Get.back();
                  },
                ),
                CupertinoButton(
                  child: const Text('Confirm'),
                  onPressed: () {
                    result = true;
                    if (Get.isDialogOpen!) Get.back();
                  },
                ),
              ],
            ),
      barrierColor: Colors.black26,
      transitionCurve: Curves.easeInOutBack,
    );
    return result;
  }

  static Future showSuccess({String? title}) async {
    Timer? timer;
    return await Get.dialog(
      Builder(
        builder: (BuildContext builderContext) {
          timer = Timer(const Duration(seconds: 2), () {
            Get.back();
          });

          return Center(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: AppColors.baseWhite,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  const CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.check,
                      color: AppColors.baseWhite,
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: Get.width * 2 / 3,
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      title ?? 'Successful',
                      style: AppTextStyles.body.w400.s16.baseWhiteColor,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      barrierColor: Colors.black26,
      transitionCurve: Curves.easeInOutBack,
    ).then((val) {
      if (timer!.isActive) {
        timer!.cancel();
      }
    });
  }

  static void dismissKeyboard() => Get.focusScope!.unfocus();
}
