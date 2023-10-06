import 'package:flutter/material.dart';

class FormLoginPage extends StatefulWidget {
  const FormLoginPage({super.key});

  @override
  State<FormLoginPage> createState() => _FormLoginPageState();
}

class _FormLoginPageState extends State<FormLoginPage> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Storage"),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(label: Text('Username')),
          ),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(label: Text('Email')),
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(label: Text('Password')),
          ),
        ],
      )),
    );
  }
}
