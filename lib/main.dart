import 'package:flutter/material.dart';
import 'package:flutter_learning/projects/day_5_interactive_counter/InteractiveCounter.dart';
// import 'package:flutter_learning/projects/day_4_user_information_app/day_4_user_information_app.dart';
// import 'package:flutter_learning/projects/day_1_profile_card/ProfileCard.dart';
// import 'package:flutter_learning/projects/day_2_settings_page/SettingsPage.dart';
// import 'package:flutter_learning/projects/day_3_personal_dashboard/PersonalDashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'zac',
        home: InteractiveCounter());
  }
}
