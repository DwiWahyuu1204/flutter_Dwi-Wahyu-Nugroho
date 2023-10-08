import 'package:flutter/material.dart';
import 'package:project_flutter/view-models/provider/contact-provider/contact_view_models.dart';
import 'package:project_flutter/view-models/provider/contact-provider/validate_name.dart';
import 'package:project_flutter/view-models/provider/contact-provider/validate_phone.dart';
import 'package:project_flutter/view-models/provider/login-provider/auth_provider.dart';

import 'package:project_flutter/view/splash_screen.dart';
import 'package:provider/provider.dart';

import 'view/contact-screen/screen_contact.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ValidateName()),
        ChangeNotifierProvider(create: (_) => ValidatePhone()),
        ChangeNotifierProvider(create: (_) => ContactViewModels()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
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
        initialRoute: 'login',
        routes: {
          '/': (context) => const ScreenContact(),
          'login': (context) => const SplashPage(),
        });
  }
}
