import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const TextStyle largeTitleBoldB = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColors.baseDarkBlue,
  );

  static const TextStyle title2 = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 22,
    fontWeight: FontWeight.normal,
    color: AppColors.baseDark,
  );

  static const TextStyle headline = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 17,
    letterSpacing: -0.12,
    fontWeight: FontWeight.w600,
    color: AppColors.baseDark,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 17,
    letterSpacing: -0.12,
    fontWeight: FontWeight.normal,
    color: AppColors.baseDark,
  );

  static const TextStyle callout = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 16,
    letterSpacing: -0.18,
    fontWeight: FontWeight.normal,
    color: AppColors.baseDark,
  );

  static const TextStyle subhead = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 15,
    letterSpacing: -0.12,
    fontWeight: FontWeight.normal,
    color: AppColors.baseDark,
  );

  static const TextStyle footnote = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 13,
    letterSpacing: -0.08,
    fontWeight: FontWeight.normal,
    color: AppColors.baseDark,
  );

  static const TextStyle caption1 = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 12,
    height: 0,
    letterSpacing: 0.12,
    fontWeight: FontWeight.normal,
    color: AppColors.baseDark,
  );

  static const TextStyle caption2 = TextStyle(
    fontFamily: 'OpenSans',
    fontSize: 11,
    height: 0,
    letterSpacing: 0.07,
    fontWeight: FontWeight.normal,
    color: AppColors.baseDark,
  );
}

extension AppFontWeight on TextStyle {
  /// FontWeight.w100
  TextStyle get w100 => copyWith(
        fontWeight: FontWeight.w100,
      );

  /// FontWeight.w200
  TextStyle get w200 => copyWith(
        fontWeight: FontWeight.w200,
      );

  /// FontWeight.w300
  TextStyle get w300 => copyWith(
        fontWeight: FontWeight.w300,
      );

  /// FontWeight.w400
  TextStyle get w400 => copyWith(
        fontWeight: FontWeight.w400,
      );

  /// FontWeight.w500
  TextStyle get w500 => copyWith(
        fontWeight: FontWeight.w500,
      );

  /// FontWeight.w600
  TextStyle get w600 => copyWith(
        fontWeight: FontWeight.w600,
      );

  /// FontWeight.w700
  TextStyle get w700 => copyWith(
        fontWeight: FontWeight.w700,
      );

  /// FontWeight.w800
  TextStyle get w800 => copyWith(
        fontWeight: FontWeight.w800,
      );

  /// FontWeight.w900
  TextStyle get w900 => copyWith(
        fontWeight: FontWeight.w900,
      );
}

extension AppFontSize on TextStyle {
  /// fontSize: 10
  TextStyle get s10 => copyWith(
        fontSize: 10,
      );

  /// fontSize: 12
  TextStyle get s12 => copyWith(
        fontSize: 12,
      );

  /// fontSize: 14
  TextStyle get s14 => copyWith(
        fontSize: 14,
      );

  /// fontSize: 16
  TextStyle get s16 => copyWith(
        fontSize: 16,
      );

  /// fontSize: 18
  TextStyle get s18 => copyWith(
        fontSize: 18,
      );

  /// fontSize: 20
  TextStyle get s20 => copyWith(
        fontSize: 20,
      );

  /// fontSize: 24
  TextStyle get s24 => copyWith(
        fontSize: 24,
      );

  /// fontSize: 32
  TextStyle get s32 => copyWith(
        fontSize: 32,
      );

  /// fontSize: 40
  TextStyle get s40 => copyWith(
        fontSize: 40,
      );

  /// fontSize: 48
  TextStyle get s48 => copyWith(
        fontSize: 48,
      );
}

extension AppFontColor on TextStyle {
  /// color: AppColors.white,
  TextStyle get baseWhiteColor => copyWith(color: AppColors.baseWhite);

  /// color: AppColors.black,
  TextStyle get baseDarkColor => copyWith(color: AppColors.baseDark);

  /// color: AppColors.black,
  TextStyle get baseGrayColor => copyWith(color: AppColors.baseGray);

  /// color: AppColors.black,
  TextStyle get grayColor => copyWith(color: AppColors.gray);

  /// color: AppColors.kPrimaryColor,
  TextStyle get blueColor => copyWith(color: AppColors.blue);

  /// color: AppColors.baseDarkBlue,
  TextStyle get baseDarkBlueColor => copyWith(color: AppColors.baseDarkBlue);
}

extension AppFontStyle on TextStyle {
  /// color: AppColors.white,
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
}

extension AppFontDecoration on TextStyle {
  /// decoration: TextDecoration.overline,
  TextStyle get overline => copyWith(decoration: TextDecoration.overline);

  /// decoration: TextDecoration.underline,
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  /// decoration: TextDecoration.overline,
  TextStyle get noneDecoration => copyWith(decoration: TextDecoration.none);

  /// decoration: TextDecoration.lineThrough,
  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);
}

extension AppFontFamily on TextStyle {
  /// fontFamily: GoogleFonts.roboto().fontFamily,
  TextStyle get roboto => copyWith(fontFamily: GoogleFonts.roboto().fontFamily);
}
