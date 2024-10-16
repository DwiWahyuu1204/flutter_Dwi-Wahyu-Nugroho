import 'package:flutter/material.dart';

import 'package:from_input_button/widget_global/button_widget.dart';
import 'package:from_input_button/widget_global/my_color_thema.dart';
import 'package:from_input_button/widget_global/my_fonts_style.dart';
import 'package:from_input_button/widget_global/textfield_widget.dart';
import '../../soal_prioritas_1/models/data_contacts.dart';
import '../../soal_prioritas_1/widget_prioritas1/header_contacts.dart';

class HomeContacts2 extends StatefulWidget {
  const HomeContacts2({super.key});

  @override
  State<HomeContacts2> createState() => _HomeContacts2State();
}

class _HomeContacts2State extends State<HomeContacts2> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nomorTeleponController = TextEditingController();
  final List<Contact> contacts = [];
  String nameValue = '';
  String phoneValue = '';
  bool isButtonEnabled = false;
  bool isEditing = false;
  int selectedIndex = -1;

  void updateButton() {
    if (nameValue.isNotEmpty && phoneValue.isNotEmpty) {
      setState(() {
        isButtonEnabled = true;
      });
    } else {
      isButtonEnabled = false;
    }
  }

  void editContact(int index) {
    namaController.text = contacts[index].title;
    nomorTeleponController.text = contacts[index].subtitle;
    setState(() {
      isEditing = true;
      selectedIndex = index;
    });
    nameValue = contacts[index].title;
    phoneValue = contacts[index].subtitle;
  }

  void deleteContact(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Konfirmasi Hapus'),
          content: const Text('Apakah Anda yakin ingin menghapus kontak ini?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
              },
            ),
            TextButton(
              child: const Text('Hapus'),
              onPressed: () {
                contacts.removeAt(index);
                setState(() {});
                Navigator.of(context).pop(); // Tutup dialog setelah menghapus
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String submitButtonText = isEditing ? "Update Data" : "Submit";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Container(
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
                  controller: namaController,
                  onChanged: (newValue) {
                    setState(() {
                      nameValue = newValue;
                      updateButton();
                      print('dari name $nameValue');
                    });
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldWidget(
                  label: "Nomor",
                  hintext: '+62 ...',
                  controller: nomorTeleponController,
                  onChanged: (newValue) {
                    setState(() {
                      phoneValue = newValue;
                      updateButton();
                      print('dari phone $nameValue');
                    });
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonWidget(
                        onPressed: isButtonEnabled
                            ? () {
                                String nama = namaController.text;
                                print('dari Title $nama');
                                String nomorTelepon =
                                    nomorTeleponController.text;
                                print('dari Subtitle $nomorTelepon');
                                if (isEditing) {
                                  contacts[selectedIndex].title = nama;
                                  contacts[selectedIndex].subtitle =
                                      nomorTelepon;
                                  isEditing = false;
                                } else {
                                  Contact newContact =
                                      Contact(nama, nomorTelepon);
                                  contacts.add(newContact);
                                }
                                namaController.clear();
                                nomorTeleponController.clear();
                                setState(() {
                                  isButtonEnabled = false;
                                  nameValue = "";
                                  phoneValue = '';
                                });
                              }
                            : null,
                        text: submitButtonText)
                  ],
                ),
                const SizedBox(
                  height: 49,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(28)),
                  child: Column(
                    children: [
                      Text(
                        'List Contacts',
                        style: MyFonstStyle().m3HeadlineSmall,
                      ),
                      Column(
                        children: contacts.asMap().entries.map((entry) {
                          int index = entry.key;
                          Contact contact = entry.value;
                          String firstLetter =
                              contact.title.substring(0, 1).toUpperCase();
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor:
                                  MyColorThema.m3syslightcircleavatar,
                              child: Text(
                                firstLetter,
                                style: MyFonstStyle().m3titleMedium,
                              ),
                            ),
                            title: Text(
                              contact.title,
                              style: MyFonstStyle().m3BodyLargeName,
                            ),
                            subtitle: Text(
                              contact.subtitle,
                              style: MyFonstStyle().m3BodyMedium,
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit,
                                      color: MyColorThema.m3syslightIcon),
                                  onPressed: () {
                                    editContact(index);
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.delete,
                                    color: MyColorThema.m3syslightIcon,
                                  ),
                                  onPressed: () {
                                    deleteContact(index);
                                  },
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
