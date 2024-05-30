import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/themes/app_text_theme.dart';
import '../app_button/app_button.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    required this.title,
    required this.middleText,
    this.textConfirm,
    this.textCancel,
    this.onConfirm,
  });

  final String? title;
  final String? middleText;
  final String? textConfirm;
  final String? textCancel;
  final Function? onConfirm;

  onConfirmTap() {}

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title ?? 'null',
                    style: AppTextStyles.headline,
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
            Visibility(
              visible: textConfirm != null && textCancel != null,
              child: Column(
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AppButton.outline(
                          text: textCancel,
                          onPressed: () => Get.back(),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: AppButton(
                          text: textConfirm,
                          onPressed: () {
                            if (onConfirm != null) onConfirm!();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Visibility(
              visible: textCancel != null && textConfirm == null,
              child: AppButton.outline(
                text: textCancel,
                onPressed: () => Get.back(),
              ),
            ),
            Visibility(
              visible: textConfirm != null && textCancel == null,
              child: AppButton.outline(
                text: textConfirm,
                onPressed: () {
                  if (onConfirm != null) onConfirm!();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
