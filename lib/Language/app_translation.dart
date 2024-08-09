import 'package:flutter/material.dart';
import 'package:localizationsirwaleed/Language/AllLanguageTranslation/china_zh.dart';
import 'package:localizationsirwaleed/Language/AllLanguageTranslation/urdu_ur.dart';
import 'AllLanguageTranslation/english_uk.dart';
import 'AllLanguageTranslation/english_us.dart';

class AppTranslations {
  final Locale locale;

  AppTranslations(this.locale);

  static AppTranslations of(BuildContext context) {
    return Localizations.of<AppTranslations>(context, AppTranslations)!;
  }

  static  final Map<String, Map<String, String>> _translations = {
    //here we will mention which languages should be used
    //language code mention
    'en': EnglishUS.englishUS,
    'en': EnglishUK.englishUK,
    'ur':UrduUr.urduUr,
    'zh':ChinaCN.chinacn,

  };

  /// By Iqra
  String get iqra => _translations[locale.languageCode]?['iqra'] ?? '';
  String get placeIqra => _translations[locale.languageCode]?['place'] ?? '';
  String get fatherName => _translations[locale.languageCode]?['father'] ?? '';

}