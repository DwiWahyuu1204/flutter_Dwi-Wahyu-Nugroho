import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/platform%20widget%20&%20layout/soal_prioritas2/no1.dart';

import 'platform widget & layout/soal_prioritas1/No1.dart';
import 'platform widget & layout/soal_eksplorasi/soal_eksplorasi.dart';

void main(List<String> args) {
  runApp(Eksplorasi());
}

class Prioritas1 extends StatelessWidget {
  const Prioritas1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "Belajar Flutter Alterra",
      home: Prioritas1No1(),
    );
  }
}

class Prioritas2 extends StatelessWidget {
  const Prioritas2({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: Prioritas2No1(),
    );
  }
}

class Eksplorasi extends StatelessWidget {
  const Eksplorasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Belajar Flutter Alterra",
      home: SoalEksplorasi(),
    );
  }
}
