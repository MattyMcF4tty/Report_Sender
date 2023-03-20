import 'package:flutter/material.dart';
import 'package:reportsender/screens/damage_report.dart';

void main() {
  runApp(const MyApp());
}

//start app,
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Damage Report',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DamageReport(title: 'Damage Report'),
    );
  }
}
