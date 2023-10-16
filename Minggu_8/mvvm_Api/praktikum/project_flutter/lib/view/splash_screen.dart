import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view-models/provider/login-provider/auth_provider.dart';
import 'home_page.dart';
import 'login-screen/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<AuthProvider>(context, listen: false).checkLogin();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (Provider.of<AuthProvider>(context, listen: false).isLoggedIn) {
          // homePage
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        } else {
          // login
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.timer,
          size: 48,
        ),
      ),
    );
  }
}
