import 'package:flutter/material.dart';

import '../../../models/contact-models/contact_models.dart';

class ContactViewModels extends ChangeNotifier {
  List<ContactModels> _contacts = [];

  List<ContactModels> get contacts => _contacts;

  void addContact({required String name, required String phone}) {
    _contacts.add(ContactModels(
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
      _contacts[index] = ContactModels(name: name, phone: phone);
      notifyListeners();
    }
  }

  ContactModels getContactByIndex(int index) {
    return _contacts[index];
  }
}
