import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  //for first language selection lang and country code
  Locale _selectedLanguage = Locale('ur', 'PK');
List<Locale> supportedLanguages = [
  //lang and country code
  const Locale('en', 'US'),
  const Locale('en', 'UK'),
  const Locale('ur', 'PK'),
  const Locale('zh', 'CN'),
];
  LanguageProvider() {
    _loadSelectedLanguage();
  }

  Locale get selectedLanguage => _selectedLanguage;

  //by default first language
  void _loadSelectedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('language_code') ?? 'zh';
    final countryCode = prefs.getString('country_code') ?? 'CN';
    _selectedLanguage = Locale(languageCode, countryCode);
    notifyListeners();
  }

  Future<void> updateLanguage(Locale newLocale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('language_code', newLocale.languageCode);
    await prefs.setString('country_code', newLocale.countryCode!);
    _selectedLanguage = newLocale;
    notifyListeners();
  }
}