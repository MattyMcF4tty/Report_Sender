import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String placeholderText;
  final String inputfieldLabel;

  const InputField(
      {super.key,
      required this.placeholderText,
      required this.inputfieldLabel});

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
        Text(widget.inputfieldLabel),
        TextField(
          controller: inputfieldTextController,
          decoration: InputDecoration(
            hintText: widget.placeholderText,
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
