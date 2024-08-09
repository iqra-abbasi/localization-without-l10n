import 'package:flutter/material.dart';
import 'package:localizationsirwaleed/Language/app_translation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(AppTranslations.of(context).iqra,
          style: TextStyle(
            color: Colors.red,
          ),),

          SizedBox(height: 30,),
          Text(AppTranslations.of(context).placeIqra,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),),

          SizedBox(height: 30,),
          Text(AppTranslations.of(context).fatherName,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),)
        ],
      ),
    );
  }
}
