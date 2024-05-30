import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';

import '../../../core/languages/app_translations.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.title,
    this.hintText,
    this.errorText,
    this.obscureText,
    this.controller,
    this.validator,
    this.textInputAction,
    this.autovalidateMode,
    this.textCapitalization = TextCapitalization.none,
    this.keyboardType,
    this.inputFormatters,
    this.onTap,
  });
  final String? title;
  final String? hintText;
  final String? errorText;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autovalidateMode;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onTap;
  @override
  AppTextFieldState createState() => AppTextFieldState();
}

class AppTextFieldState extends State<AppTextField> {
  final RxBool _obscureText = true.obs;
  @override
  void initState() {
    super.initState();
    _obscureText.value = widget.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null)
          Text(
            widget.title!,
            style: AppTextStyles.subhead.baseGrayColor,
          ),
        SizedBox(
          height: 48,
          child: Obx(
            () => TextFormField(
              obscureText: _obscureText.value,
              controller: widget.controller,
              validator: widget.validator,
              // Сдейлай переход на следующее поле ввод по нажатию на Enter
              textInputAction: widget.textInputAction,
              autovalidateMode: widget.autovalidateMode,
              textCapitalization: widget.textCapitalization,
              keyboardType: widget.keyboardType,
              inputFormatters: widget.inputFormatters,
              onTap: widget.onTap,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColors.blue),
                ),
                hintText: widget.hintText,
                hintStyle: AppTextStyles.body.baseDarkColor.s14.roboto,
                suffixIcon: widget.obscureText != null
                    ? GestureDetector(
                        onTap: () => _obscureText.value = !_obscureText.value,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: _obscureText.value
                              ? const Icon(CupertinoIcons.eye_slash)
                              : const Icon(CupertinoIcons.eye),
                        ),
                      )
                    : const SizedBox(),
                suffixIconConstraints: const BoxConstraints(
                  maxWidth: 32,
                ),
              ),
            ),
          ),
        ),
        if (widget.errorText != null && widget.errorText!.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
              top: 4,
            ),
            child: Text(
              widget.errorText ?? AppTranslationKey.noEmpty,
              style: AppTextStyles.body.s14.baseDarkColor,
            ),
          ),
      ],
    );
  }
}
