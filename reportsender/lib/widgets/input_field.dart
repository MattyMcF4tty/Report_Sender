import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({super.key});

  @override
  State<InputField> createState() => _InputField();
}

class _InputField extends State<InputField> {
  final inputfieldTextController = TextEditingController();

  @override
  void dispose() {
    inputfieldTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Title"),
        TextField(
          controller: inputfieldTextController,
          decoration: InputDecoration(
            hintText: "Placeholder",
            filled: true,
            fillColor: Colors.white,
            hoverColor: Colors.blue,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
