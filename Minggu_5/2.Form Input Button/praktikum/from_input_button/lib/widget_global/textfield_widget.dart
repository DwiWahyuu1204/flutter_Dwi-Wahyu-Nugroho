import 'package:flutter/material.dart';

import 'my_color_thema.dart';
import 'my_fonts_style.dart';

class TextFieldWidget extends StatefulWidget {
  final String? label;
  final String? hintext;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? errorText;
  final TextInputType? keyboardType;

  const TextFieldWidget({
    super.key,
    required this.label,
    required this.hintext,
    this.controller,
    this.onChanged,
    this.errorText,
    this.keyboardType,
  });
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        errorText: widget.errorText,
        fillColor: MyColorThema.m3syslightTextField,
        filled: true,
        labelText: widget.label,
        labelStyle: MyFonstStyle().m3BodySmall,
        hintText: widget.hintext,
        hintStyle: MyFonstStyle().m3BodyLarge,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: const UnderlineInputBorder(),
      ),
    );
  }
}
