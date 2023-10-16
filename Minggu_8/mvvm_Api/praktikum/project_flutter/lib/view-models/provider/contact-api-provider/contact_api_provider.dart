import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../models/Api/contact_api_data.dart';

class ContactApiProvider with ChangeNotifier {
  List<Contact> _contacts = [];

  List<Contact> get contacts => _contacts;

  Future<void> addContact(Contact contact) async {
    try {
      final response = await Dio().post(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
        data: contact.toJson(),
      );

      if (response.statusCode == 201) {
        _contacts.add(Contact.fromJson(response.data));
        notifyListeners();
      }
    } catch (error) {
      print('Error adding contact: $error');
      throw error;
    }
  }

  Future<void> fetchContacts() async {
    try {
      final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
      );

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        _contacts = data.map((json) => Contact.fromJson(json)).toList();
        notifyListeners();
      }
    } catch (error) {
      print('Error fetching contacts: $error');
      throw error;
    }
  }

  Future<void> updateContact(Contact contact) async {
    try {
      final response = await Dio().put(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/${contact.id}',
        data: contact.toJson(),
      );

      if (response.statusCode == 200) {
        _contacts[_contacts.indexWhere((c) => c.id == contact.id)] = contact;
        notifyListeners();
      }
    } catch (error) {
      print('Error updating contact: $error');
      throw error;
    }
  }
}
