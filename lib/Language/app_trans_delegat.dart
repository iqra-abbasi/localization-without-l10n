import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_translation.dart';

class AppTranslationsDelegate extends LocalizationsDelegate<AppTranslations> {
  final Locale overriddenLocale;

  const AppTranslationsDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) {
    //language code
    return ['en', 'en','ur','zh'].contains(locale.languageCode);
  }

  @override
  //for first language selection country and language code
  Future<AppTranslations> load(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('language_code') ?? 'zh';
    final countryCode = prefs.getString('country_code') ?? 'CN';
    final savedLocale = Locale(languageCode, countryCode);
    return AppTranslations(savedLocale);
  }

  @override
  bool shouldReload(AppTranslationsDelegate old) {
    return overriddenLocale != old.overriddenLocale;
  }
}