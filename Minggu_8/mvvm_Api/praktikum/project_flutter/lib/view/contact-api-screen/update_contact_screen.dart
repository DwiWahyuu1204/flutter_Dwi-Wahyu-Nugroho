import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/Api/contact_api_data.dart';
import '../../view-models/provider/contact-api-provider/contact_api_provider.dart';

class UpdateContactScreen extends StatefulWidget {
  final Contact contact;

  const UpdateContactScreen({super.key, required this.contact});

  @override
  _UpdateContactScreenState createState() => _UpdateContactScreenState();
}

class _UpdateContactScreenState extends State<UpdateContactScreen> {
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void initState() {
    _nameController.text = widget.contact.name;
    _phoneController.text = widget.contact.phone;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Phone'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text;
                final phone = _phoneController.text;
                if (name.isNotEmpty && phone.isNotEmpty) {
                  final updatedContact = Contact(
                    id: widget.contact.id,
                    name: name,
                    phone: phone,
                  );
                  Provider.of<ContactApiProvider>(context, listen: false)
                      .updateContact(updatedContact)
                      .then((_) {
                    Navigator.pop(context);
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Name and phone cannot be empty')),
                  );
                }
              },
              child: const Text('Update Contact'),
            ),
          ],
        ),
      ),
    );
  }
}
