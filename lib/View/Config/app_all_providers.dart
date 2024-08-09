import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Language/language_provider.dart';

class RegisterAllProviders {
  static get allProvidersList => [

    ChangeNotifierProvider(create: (_) => LanguageProvider()),

  ];
}