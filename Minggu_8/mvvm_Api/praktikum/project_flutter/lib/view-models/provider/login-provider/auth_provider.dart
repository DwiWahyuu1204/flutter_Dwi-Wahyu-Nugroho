import 'package:flutter/material.dart';
import 'package:project_flutter/view-models/provider/login-provider/sharedpref.dart';

class AuthProvider with ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  TextEditingController get usernameController => _usernameController;
  TextEditingController get passwordController => _passwordController;

  void checkLogin() async {
    String? username = await Sharedpref.getUsername();
    _isLoggedIn = username != null && username.isNotEmpty;
    notifyListeners();
  }

  Future<void> login() async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    await Sharedpref.saveToken(username, password);
    _isLoggedIn = true;
    notifyListeners();
  }
}
