import 'package:flutter/material.dart';

import 'my_color_thema.dart';
import 'my_fonts_style.dart';

class ButtonWidget extends StatefulWidget {
  final Function()? onPressed;
  final String? text;
  const ButtonWidget({super.key, required this.onPressed, required this.text});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColorThema.m3syslightPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Text(
          widget.text ?? '',
          style: MyFonstStyle().m3LabelLarge,
        ));
  }
}
