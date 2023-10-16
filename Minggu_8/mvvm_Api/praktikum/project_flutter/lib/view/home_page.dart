import 'package:flutter/material.dart';
import 'package:project_flutter/view-models/provider/login-provider/sharedpref.dart';

import 'login-screen/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String? username = await Sharedpref.getUsername();
            String? password = await Sharedpref.getPassword();
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Data User'),
                  content: Text('Username: $username\nPassword: $password'),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Close'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('tampilkan data'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Sharedpref.removeToken();

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: const Icon(Icons.logout),
      ),
    );
  }
}
