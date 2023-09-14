import 'package:flutter/material.dart';

import 'package:from_input_button/widget_global/button_widget.dart';
import 'package:from_input_button/widget_global/textfield_widget.dart';

import '../models/data_contacts.dart';
import '../widget_prioritas1/header_contacts.dart';

class HomeContacts1 extends StatefulWidget {
  const HomeContacts1({super.key});

  @override
  State<HomeContacts1> createState() => _HomeContacts1State();
}

class _HomeContacts1State extends State<HomeContacts1> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nomorTeleponController = TextEditingController();
  final List<Contact> contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 16),
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HeaderContacts(),
              const SizedBox(
                height: 16,
              ),
              TextFieldWidget(
                  label: "Nama",
                  hintext: 'Insert Your Name',
                  controller: namaController),
              const SizedBox(
                height: 16,
              ),
              TextFieldWidget(
                  label: "Nomor",
                  hintext: '+62 ...',
                  controller: nomorTeleponController),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonWidget(
                      onPressed: () {
                        String nama = namaController.text;
                        print('dari Title $nama');
                        String nomorTelepon = nomorTeleponController.text;
                        print('dari Subtitle $nomorTelepon');
                        Contact newContact = Contact(nama, nomorTelepon);
                        contacts.add(newContact);
                        for (var contact in contacts) {
                          print(
                              'Title: ${contact.title}, Subtitle: ${contact.subtitle}');
                        }
                        namaController.clear();
                        nomorTeleponController.clear();
                        setState(() {});
                      },
                      text: 'Submit')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
