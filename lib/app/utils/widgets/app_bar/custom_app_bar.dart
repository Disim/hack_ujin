import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/themes/app_colors.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.centerTitle = false,
    super.key,
    super.leading,
    super.title,
    super.actions,
    super.bottom,
    Color? backgroundColor,
    double? elevation,
    Brightness? brightness,
  }) : super(
            surfaceTintColor: Colors.transparent,
            iconTheme: const IconThemeData(color: AppColors.baseGray),
            backgroundColor: backgroundColor ?? Colors.transparent,
            elevation: elevation ?? 0,
            systemOverlayStyle: SystemUiOverlayStyle.dark);
}
