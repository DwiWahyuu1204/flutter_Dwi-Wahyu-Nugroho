import 'package:flutter/material.dart';

import 'my_color_thema.dart';
import 'my_fonts_style.dart';

class TextFieldWidget extends StatefulWidget {
  final String? label;
  final String? hintext;
  final TextEditingController? controller;

  const TextFieldWidget(
      {super.key,
      required this.label,
      required this.hintext,
      required this.controller});
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        fillColor: MyColorThema.m3syslightTextField,
        filled: true,
        labelText: widget.label,
        labelStyle: MyFonstStyle().m3BodySmall,
        hintText: widget.hintext,
        hintStyle: MyFonstStyle().m3BodyLarge,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: UnderlineInputBorder(),
      ),
    );
  }
}
