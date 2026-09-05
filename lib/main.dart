import 'package:flutter/material.dart';
// import 'package:flutter_learning/projects/day_1_profile_card/ProfileCard.dart';
import 'package:flutter_learning/projects/day_2_personal_dashboard/personal_dashboard.dart';

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
        home: PersonalDashboard());
  }
}
