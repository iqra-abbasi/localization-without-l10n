import 'package:flutter/material.dart';
import 'package:localizationsirwaleed/View/HomeScreen/homepage2.dart';
import 'package:provider/provider.dart';
import 'package:localizationsirwaleed/Language/language_provider.dart';
import 'package:localizationsirwaleed/Language/app_translation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(AppTranslations.of(context).iqra),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Language selection radio buttons
            Text("Select Language:"),
            ...languageProvider.supportedLanguages.map((locale) {
              return RadioListTile<Locale>(
                title: Text(locale.languageCode.toUpperCase()),
                value: locale,
                groupValue: languageProvider.selectedLanguage,
                onChanged: (Locale? selectedLocale) {
                  if (selectedLocale != null) {
                    languageProvider.updateLanguage(selectedLocale);
                  }
                },
              );
            }).toList(),
            SizedBox(height: 30),
            Text(AppTranslations.of(context).iqra,
                style: const TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text(AppTranslations.of(context).placeIqra,
                style: const TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text(AppTranslations.of(context).fatherName,
                style: const TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold)),

            SizedBox(height: 30),
ElevatedButton(onPressed: (){
  Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage2(),) );

},
    child: Text('go to next page'))
          ],
        ),
      ),
    );
  }
}
