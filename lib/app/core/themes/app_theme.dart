import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/app_colors.dart';

class AppThemes {
  AppThemes._();

  static final ThemeData themData = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.baseWhite,
    primaryColor: AppColors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: GoogleFonts.openSansTextTheme(),
  );
}
