import 'package:flutter/material.dart';
import 'package:localizationsirwaleed/Language/app_translation.dart';
class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Text(AppTranslations.of(context).placeIqra,
              style: const TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          Text(AppTranslations.of(context).iqra,
              style: const TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          Text(AppTranslations.of(context).fatherName,
              style: const TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold)),
          SizedBox(height: 30),
          Text(AppTranslations.of(context).motherName,
              style: const TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold)),

        ],
      ),
    );
  }
}
