import 'package:flutter/material.dart';

import '../../../core/themes/app_colors.dart';

class InfoIconButton extends StatelessWidget {
  const InfoIconButton({super.key, required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onPressed(),
      icon: const Icon(
        Icons.info_outline_rounded,
        size: 30,
      ),
      color: AppColors.blue,
    );
  }
}
