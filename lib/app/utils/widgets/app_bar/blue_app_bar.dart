import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

class BlueAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BlueAppBar({
    super.key,
    this.leading,
    this.title = 'Title',
    this.actions,
    this.bottom,
    this.backgroundColor,
    this.elevation,
    this.brightness,
  });

  final Widget? leading;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;

  final String title;
  final Color? backgroundColor;
  final double? elevation;
  final Brightness? brightness;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(18),
          ),
        ),
        centerTitle: true,
        title: Text(
          title,
          style: AppTextStyles.largeTitleBoldB.baseWhiteColor,
        ),
        flexibleSpace: SizedBox(
          height: 240,
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/app_bar/app_bar_bg.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: AppColors.blue,
        elevation: elevation ?? 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark);
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
