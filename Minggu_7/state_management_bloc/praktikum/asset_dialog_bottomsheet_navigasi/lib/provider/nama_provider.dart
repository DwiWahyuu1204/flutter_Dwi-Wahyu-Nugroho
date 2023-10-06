import 'package:flutter/material.dart';

class NameProvider with ChangeNotifier {
  String _nameValue = '';
  String? _nameErrorText;
  final TextEditingController _nameController = TextEditingController();

  String get nameValue => _nameValue;
  String? get nameErrorText => _nameErrorText;
  TextEditingController get nameController => _nameController;

  void setNameValue(String newValue) {
    _nameValue = newValue;
    if (_nameValue.isEmpty) {
      _nameErrorText = 'Nama tidak boleh kosong.';
    } else if (_nameValue.length <= 2) {
      _nameErrorText = 'Nama harus lebih dari 2 karakter.';
    } else if (_nameValue.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
      _nameErrorText = 'Nama tidak boleh mengandung karakter khusus.';
    } else {
      _nameErrorText = null;
    }
    notifyListeners();
  }
}
