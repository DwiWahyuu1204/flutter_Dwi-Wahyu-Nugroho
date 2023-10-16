import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/Api/contact_api_data.dart';
import '../../view-models/provider/contact-api-provider/contact_api_provider.dart';
import 'add_contact_api.dart';
import 'update_contact_screen.dart';

class ContactApiScreen extends StatefulWidget {
  @override
  _ContactApiScreenState createState() => _ContactApiScreenState();
}

class _ContactApiScreenState extends State<ContactApiScreen> {
  @override
  void initState() {
    Provider.of<ContactApiProvider>(context, listen: false).fetchContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts List'),
      ),
      body: Consumer<ContactApiProvider>(
        builder: (context, contactProvider, child) {
          List<Contact> contacts = contactProvider.contacts;
          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              Contact contact = contacts[index];
              return ListTile(
                title: Text(contact.name),
                subtitle: Text(contact.phone),
                onTap: () {
                  // Ketika kontak diklik, navigasikan ke halaman UpdateContactScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          UpdateContactScreen(contact: contact),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddContactScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
