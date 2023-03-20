import 'package:flutter/material.dart';
import 'package:reportsender/widgets/inputfield.dart';
import 'package:reportsender/style/my_colors.dart';

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
      backgroundColor: MyColors.secondaryGreen,
      appBar: AppBar(
        backgroundColor: MyColors.primaryGreen,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(10, 40, 10, 0),
            child: const InputField(
              placeholderText: "Type here...",
              inputfieldLabel: "Describe the damages",
            ),
          ),
        ],
      ),
    );
  }
}
