import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/retinaPage.dart';
import 'package:untitled2/up_ratina.dart';

import 'add_medication.dart';
import 'add_reminder.dart';
import 'dashboard.dart';
import 'diabetes_types.dart';
import 'feedback.dart';
import 'help.dart';
import 'insuline_calculate.dart';
import 'medication.dart';
import 'ourservices.dart';
import 'profile.dart';
import 'reminder_time.dart';
import 'report.dart';
import 'search_page.dart';
import 'type1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
          displaySmall: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.deepPurple,
          secondary: Colors.grey,

        ),
        useMaterial3: true,
      ),
      home:  SearchPage(),
    );
  }
}
