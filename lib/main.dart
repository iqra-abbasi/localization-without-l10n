import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'Language/app_trans_delegat.dart';
import 'Language/language_provider.dart';
import 'View/Config/app_all_providers.dart';
import 'View/HomeScreen/home_screen.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: RegisterAllProviders.allProvidersList,
      child: Builder(builder: (BuildContext context) {
        final languageProvider = Provider.of<LanguageProvider>(context);
        return ScreenUtilInit(
          designSize: const Size(430, 932),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
           // final themeProvider = Provider.of<ThemeProvider>(context);
            return MaterialApp(
              home: HomeScreen(),
              // navigatorKey: navigatorKey,
              debugShowCheckedModeBanner: false,
              title: 'Flutter code structure',
              locale: languageProvider.selectedLanguage,
              supportedLocales: languageProvider.supportedLanguages,
              localizationsDelegates: [
                AppTranslationsDelegate(languageProvider.selectedLanguage),
              ],
            );
          },
        );
      }),
    );
  }
}
