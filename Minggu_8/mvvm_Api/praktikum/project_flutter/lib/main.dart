import 'package:flutter/material.dart';

import 'package:project_flutter/view-models/provider/contact-api-provider/contact_api_provider.dart';
import 'package:project_flutter/view-models/provider/contact-provider/contact_view_models.dart';
import 'package:project_flutter/view-models/provider/contact-provider/validate_name.dart';
import 'package:project_flutter/view-models/provider/contact-provider/validate_phone.dart';
import 'package:project_flutter/view-models/provider/dicebear-viewModel/dicebear_viewModel.dart';
import 'package:project_flutter/view-models/provider/login-provider/auth_provider.dart';
import 'package:project_flutter/view/dicebear_screen.dart';

import 'package:project_flutter/view/splash_screen.dart';
import 'package:provider/provider.dart';

import 'view/contact-api-screen/contact_api_screen.dart';
import 'view/contact-screen/screen_contact.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ValidateName()),
        ChangeNotifierProvider(create: (_) => ValidatePhone()),
        ChangeNotifierProvider(create: (_) => ContactViewModels()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ContactApiProvider()),
        ChangeNotifierProvider(create: (_) => DicebearViewModel()),
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
        initialRoute: 'dicebearScreen',
        routes: {
          '/': (context) => const ScreenContact(),
          'login': (context) => const SplashPage(),

          /// Tugas Api & MVVM
          'contactapi': (context) => ContactApiScreen(),
          'dicebearScreen': (context) => const DicebearScreen()
        });
  }
}
