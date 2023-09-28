import 'package:asset_dialog_bottomsheet_navigasi/eksplorasi/galery_eksplorasi.dart';
import 'package:asset_dialog_bottomsheet_navigasi/eksplorasi/new_page_eksplorasi.dart';
import 'package:flutter/material.dart';

import 'eksplorasi advance form/home_eksplorasi.dart';
import 'prioritas_1_2/galery_prioritas1_2.dart';
import 'prioritas_1_2/new_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeEksplorasi(),
          'galery': (context) => GalleryPage(),
          '/new_page': (context) => const NewPage(),
          '/GaleryEksplorasi': (context) => GaleryEksplorasi(),
          '/NewPage_eksplorasi': (context) => const NewPageEksplorasi(),
        });
  }
}
