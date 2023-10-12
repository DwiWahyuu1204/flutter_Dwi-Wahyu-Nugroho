import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String? label;
  final String? hintext;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;

  const TextFieldWidget({
    super.key,
    this.label,
    required this.hintext,
    this.controller,
    this.keyboardType,
    this.maxLines,
  });
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: widget.label,
        hintText: widget.hintext,
      ),
    );
  }
}
