import 'package:flutter/material.dart';
import 'soal_prioritas_1/screenPage/home_contacts_1.dart';
import 'soal_prioritas_2/ScreenPage/home_contacts2.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Form Input Button",
      debugShowCheckedModeBanner: false,
      home: HomeContacts1(),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Form Input Button",
      debugShowCheckedModeBanner: false,
      home: HomeContacts2(),
    );
  }
}
