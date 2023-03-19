import 'package:flutter/material.dart';
import 'package:reportsender/widgets/input_field.dart';

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

class DamageReport extends StatelessWidget {
  const DamageReport({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InputField(),
          Text("t"),
        ],
      ),
    );
  }
}
