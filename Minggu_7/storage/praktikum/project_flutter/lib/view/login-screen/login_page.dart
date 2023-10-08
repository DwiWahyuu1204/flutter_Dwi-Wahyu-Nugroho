import 'package:flutter/material.dart';
import 'package:project_flutter/view-models/provider/login-provider/auth_provider.dart';

import 'package:provider/provider.dart';

import '../home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var loginProvider = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: loginProvider.usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: loginProvider.passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                loginProvider.login().then((_) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                }).catchError((error) {
                  // Handle error jika terjadi kesalahan saat login
                  print('Error: $error');
                  // Tampilkan pesan kesalahan atau lakukan tindakan yang sesuai
                });
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
