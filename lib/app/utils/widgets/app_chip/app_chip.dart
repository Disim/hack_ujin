import 'package:flutter/widgets.dart';

import '../../../core/themes/app_text_theme.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    this.backgroundColor = const Color.fromRGBO(208, 208, 208, 1),
    this.textColor,
    required this.text,
  });

  final Color backgroundColor;
  final Color? textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(90),
      ),
      child: Text(text,
          style: textColor == null
              ? AppTextStyles.footnote.baseWhiteColor
              : AppTextStyles.footnote.copyWith(color: textColor)),
    );
  }
}
