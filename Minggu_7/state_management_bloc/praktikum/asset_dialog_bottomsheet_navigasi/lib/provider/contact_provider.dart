import 'package:asset_dialog_bottomsheet_navigasi/provider/contact_data.dart';
import 'package:flutter/material.dart';

class ContactProvider extends ChangeNotifier {
  List<DataContact> _contacts = [];

  List<DataContact> get contacts => _contacts;

  void addContact({required String name, required String phone}) {
    _contacts.add(DataContact(
      name: name,
      phone: phone,
    ));
    print(_contacts);
    notifyListeners();
  }

  void delateContact(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }

  void editContact(int index, {required String name, required String phone}) {
    if (index >= 0 && index < _contacts.length) {
      _contacts[index] = DataContact(name: name, phone: phone);
      notifyListeners();
    }
  }

  DataContact getContactByIndex(int index) {
    return _contacts[index];
  }
}
