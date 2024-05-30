import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import '../../../utils/widgets/app_button/base_button.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    required this.onPressed,
    this.text,
    this.color = AppColors.blue,
    this.style,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
    this.space = 12,
    this.height = 48,
    this.width = double.infinity,
    this.borderRadius,
  }) {
    isOutline = false;
  }

  AppButton.outline({
    super.key,
    required this.onPressed,
    this.text,
    this.color = AppColors.blue,
    this.style,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
    this.space = 12,
    this.height = 48,
    this.width = double.infinity,
    this.borderRadius,
  }) {
    isOutline = true;
  }

  late final bool isOutline;
  final String? text;
  final VoidCallback? onPressed;
  final Color color;
  final TextStyle? style;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double space;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    TextStyle finalStyle = style ?? AppTextStyles.body.w500.s16.baseWhiteColor;
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(48),
      child: BaseButton(
        onPressed: onPressed,
        color: isOutline ? const Color.fromARGB(0, 255, 255, 255) : color,
        child: Container(
          height: height,
          width: width,
          padding: padding,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: onPressed != null ? color : color.withOpacity(0.4),
            ),
            borderRadius: borderRadius ?? BorderRadius.circular(48),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              if (prefixIcon != null)
                Padding(
                  padding: EdgeInsets.only(right: text == null ? 0 : space),
                  child: prefixIcon!,
                ),
              if (text != null)
                Text(
                  text ?? '',
                  style: isOutline
                      ? finalStyle.copyWith(color: color)
                      : finalStyle,
                ),
              if (suffixIcon != null)
                Padding(
                  padding: EdgeInsets.only(right: text == null ? 0 : space),
                  child: suffixIcon!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
