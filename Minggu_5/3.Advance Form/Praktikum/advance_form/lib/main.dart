import 'package:advance_form/Soal%20Prioritas1/home_screen_1.dart';

import 'package:advance_form/Soal%20Prioritas2/home_screen_2.dart';
import 'package:flutter/material.dart';
import 'Soal Eksplorasi/home_eksplorasi.dart';

void main(List<String> args) {
  runApp(const Eksplorasi());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen1(),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen2(),
    );
  }
}

class Eksplorasi extends StatelessWidget {
  const Eksplorasi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeEksplorasi(),
    );
  }
}
