import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../languages/en_ru.dart';

class AppTranslationKey {
  AppTranslationKey._();

  // API Error
  static String get unknownError => 'unknownError'.tr;
  static String get timeoutError => 'timeoutError'.tr;
  static String get noConnectionError => 'noConnectionError'.tr;
  static String get unauthorizedError => 'unauthorizedError'.tr;
  static String get tryAgain => 'tryAgain'.tr;
  static String get identify => 'identify'.tr;
  static String get error => 'error'.tr;
  static String get successful => 'successful'.tr;
  static String get notMatch => 'notMatch'.tr;
  static String get noEmpty => 'noEmpty'.tr;
  static String get noRecords => 'noRecords'.tr;
  static String get pleaseLogin => 'pleaseLogin'.tr;
  static String get noData => 'noData'.tr;
  static String get enterText => 'enterText'.tr;

  static String get continueButton => 'application.continue'.tr;

  // The text on the pages
}

class AppTranslation {
  AppTranslation._();

  static const Locale locale = Locale('en', 'Ru');
  static final Map<String, Map<String, String>> translations = {
    'en_RU': enRU,
  };
}
