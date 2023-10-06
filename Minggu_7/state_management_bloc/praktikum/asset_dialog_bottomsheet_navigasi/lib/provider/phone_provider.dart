import 'package:flutter/material.dart';

class PhoneProvider with ChangeNotifier {
  String _phoneValue = '';
  String? _phoneErorText;
  final TextEditingController _phoneController = TextEditingController();

  String get phoneValue => _phoneValue;
  String? get phoneErrorText => _phoneErorText;
  TextEditingController get phoneController => _phoneController;
  void setPhoneValue(String newValue) {
    _phoneValue = newValue;
    if (_phoneValue.isEmpty) {
      _phoneErorText = 'nomor tidak boleh kosong';
    } else if (!_phoneValue.startsWith('0')) {
      _phoneErorText = 'nomor telepon harus dimulai dengan angka 0';
    } else if (_phoneValue.length < 8 || _phoneValue.length > 15) {
      _phoneErorText = 'Panjang nomor telepon harus antara 8 dan 15 digit';
    } else {
      _phoneErorText = null; // Validasi berhasil
    }

    notifyListeners();
  }
}
