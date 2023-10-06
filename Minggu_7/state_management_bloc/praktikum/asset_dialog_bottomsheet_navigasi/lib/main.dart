import 'package:asset_dialog_bottomsheet_navigasi/bloc/page_bloc/page_bloc.dart';
// import 'package:asset_dialog_bottomsheet_navigasi/provider/contact_provider.dart';
// import 'package:asset_dialog_bottomsheet_navigasi/provider/phone_provider.dart';
import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';

import 'package:asset_dialog_bottomsheet_navigasi/provider/page_provider.dart';
import 'asset_dialog_bottomsheet_navigasi/eksplorasi Asset_dialog_bottomSheet_navigasi/galery_eksplorasi.dart';
import 'asset_dialog_bottomsheet_navigasi/eksplorasi Asset_dialog_bottomSheet_navigasi/new_page_eksplorasi.dart';

import 'bloc/form_number_cubit/phone_bloc_cubit.dart';
import 'bloc/form_username_bloc/name_bloc_bloc.dart';
import 'eksplorasi advance form/home_eksplorasi.dart';
import 'asset_dialog_bottomsheet_navigasi/prioritas_1_2/galery_prioritas1_2.dart';
import 'asset_dialog_bottomsheet_navigasi/prioritas_1_2/new_page.dart';
// import 'provider/nama_provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    //   MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (_) => NameProvider()),
    //     ChangeNotifierProvider(create: (_) => PhoneProvider()),
    //     ChangeNotifierProvider(create: (_) => ContactProvider()),

    //     // Tambahkan penyedia lainnya jika diperlukan
    //   ],
    //   child: const MyApp(),
    // )
    MultiBlocProvider(
      providers: [
        BlocProvider<FormUsernameBloc>(
          create: (context) => FormUsernameBloc(),
        ),
        BlocProvider<FormNumberCubit>(
          create: (context) => FormNumberCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'bloc',
        routes: {
          '/': (context) => const HomeEksplorasi(),
          'bloc': (context) => const PageBloc(),
          'provider': (context) => const PageProvider(),
          'galery': (context) => GalleryPage(),
          '/new_page': (context) => const NewPage(),
          '/GaleryEksplorasi': (context) => GaleryEksplorasi(),
          '/NewPage_eksplorasi': (context) => const NewPageEksplorasi(),
        });
  }
}
