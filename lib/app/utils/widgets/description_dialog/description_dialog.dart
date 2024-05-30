import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/themes/app_text_theme.dart';
import '../app_button/app_button.dart';

class DescriptionDialog extends StatelessWidget {
  const DescriptionDialog({
    super.key,
    required this.title,
    required this.middleText,
  });

  final String? title;
  final String? middleText;

  onConfirmTap() {}

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          title ?? 'null',
                          style: AppTextStyles.title2,
                        ),
                      ),
                      GestureDetector(
                        child: const Icon(Icons.close_rounded),
                        onTap: () {
                          Get.back();
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    middleText ?? 'null',
                    style: AppTextStyles.body,
                  ),
                ],
              ),
              AppButton(
                text: 'Приступим',
                onPressed: () => Get.back(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
