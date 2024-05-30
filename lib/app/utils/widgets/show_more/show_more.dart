import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import '../app_dialog/app_dialog.dart';

class ShowMore extends StatelessWidget {
  const ShowMore({
    super.key,
    required this.text,
    this.maxLines = 3,
  });

  final String text;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.dialog(AppDialog(title: 'Описание', middleText: text)),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.transparentBlue,
            borderRadius: BorderRadius.circular(17)),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Описание',
              style: AppTextStyles.headline,
            ),
            Text(
              text,
              maxLines: maxLines,
              overflow: TextOverflow.fade,
              style: AppTextStyles.callout,
            ),
            Text(
              'Читать полностью...',
              style: AppTextStyles.callout.baseGrayColor,
            ),
          ],
        ),
      ),
    );
  }
}
