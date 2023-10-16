import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/Api/contact_api_data.dart';
import '../../view-models/provider/contact-api-provider/contact_api_provider.dart';

class AddContactScreen extends StatelessWidget {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'Phone'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text;
                final phone = _phoneController.text;
                if (name.isNotEmpty && phone.isNotEmpty) {
                  final newContact = Contact(
                    id: DateTime.now().millisecondsSinceEpoch,
                    name: name,
                    phone: phone,
                  );
                  Provider.of<ContactApiProvider>(context, listen: false)
                      .addContact(newContact);
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Name and phone cannot be empty')),
                  );
                }
              },
              child: Text('Add Contact'),
            ),
          ],
        ),
      ),
    );
  }
}
