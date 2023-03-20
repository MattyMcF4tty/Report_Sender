import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String placeholderText;
  final String inputfieldLabel;

  const InputField(
      {super.key,
      required this.placeholderText,
      required this.inputfieldLabel});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final inputfieldTextController = TextEditingController();
  final FocusNode _inputfieldFocus = FocusNode();
  Color _fillColor = Colors.white;

  @override
  void dispose() {
    inputfieldTextController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _inputfieldFocus.addListener(() {
      if (_inputfieldFocus.hasFocus) {
        setState(() {
          _fillColor = Colors.white;
        });
      } else {
        setState(() {
          _fillColor = Colors.white;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(2, 0, 0, 4),
          child: Text(widget.inputfieldLabel),
        ),
        TextField(
          controller: inputfieldTextController,
          maxLength: 500,
          maxLines: null,
          decoration: InputDecoration(
            hintText: widget.placeholderText,
            filled: true,
            fillColor: _fillColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          focusNode: _inputfieldFocus,
        ),
      ],
    );
  }
}
