import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter/models/Api/dicebear_api.dart';

class DicebearViewModel extends ChangeNotifier {
  bool _isLoading = false;
  bool get isloading => _isLoading;
  final TextEditingController _dicebearController = TextEditingController();
  TextEditingController get dicebearController => _dicebearController;
  String _imageData = '';
  String get imageData => _imageData;

  void getDicebear() async {
    _isLoading = true;
    notifyListeners();
    _imageData = await DicebearApi()
        .fatchDicebear(avatarstyle: _dicebearController.text);
    _isLoading = false;
    notifyListeners();
  }
}
