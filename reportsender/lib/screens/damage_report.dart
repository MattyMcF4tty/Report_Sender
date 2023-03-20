import 'package:flutter/material.dart';
import 'package:reportsender/widgets/input_field.dart';

class DamageReport extends StatefulWidget {
  final String title;

  const DamageReport({super.key, required this.title});

  @override
  State<DamageReport> createState() => _DamageReport();
}

class _DamageReport extends State<DamageReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          InputField(
            placeholderText: "Type here...",
            inputfieldLabel: "Describe the damages",
          ),
        ],
      ),
    );
  }
}
