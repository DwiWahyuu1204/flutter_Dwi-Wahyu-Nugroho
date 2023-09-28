import 'package:flutter/material.dart';

class Data {
  String title;
  String subtitle;
  DateTime? date; // Tambahkan atribut date
  Color color; // Tambahkan atribut color
  String? fileName; // Tambahkan atribut fileName

  Data(this.title, this.subtitle,
      {this.date, this.color = Colors.blue, this.fileName});
}
