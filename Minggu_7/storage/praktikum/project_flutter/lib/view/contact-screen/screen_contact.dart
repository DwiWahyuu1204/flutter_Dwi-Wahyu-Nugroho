import 'package:flutter/material.dart';
import 'package:project_flutter/models/contact-models/contact_models.dart';
import 'package:project_flutter/view-models/provider/contact-provider/contact_view_models.dart';
import 'package:project_flutter/view-models/provider/contact-provider/validate_name.dart';
import 'package:project_flutter/view-models/provider/contact-provider/validate_phone.dart';
import 'package:provider/provider.dart';

import '../../view-models/widget-global/button_widget.dart';
import '../../view-models/widget-global/my_color_thema.dart';
import '../../view-models/widget-global/my_fonts_style.dart';
import '../../view-models/widget-global/textfield_widget.dart';
import 'header_contact.dart';

class ScreenContact extends StatefulWidget {
  const ScreenContact({super.key});

  @override
  State<ScreenContact> createState() => _PageProviderState();
}

class _PageProviderState extends State<ScreenContact> {
  bool isButtonEnabled = false;
  bool isEditing = false;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    var nameProvider = Provider.of<ValidateName>(context);
    var phoneProvider = Provider.of<ValidatePhone>(context);
    var contactProvider = Provider.of<ContactViewModels>(context);

    String submitButtonText = isEditing ? "Update Data" : "Submit";
    void updateButton() {
      if (nameProvider.nameController.text.isNotEmpty &&
          phoneProvider.phoneController.text.isNotEmpty) {
        setState(() {
          isButtonEnabled = true;
        });
      } else {
        setState(() {
          isButtonEnabled = false;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
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
                  controller: nameProvider.nameController,
                  errorText: nameProvider.nameErrorText,
                  onChanged: (newValue) {
                    nameProvider.setNameValue(newValue);
                    updateButton();
                    print(nameProvider.nameValue);
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFieldWidget(
                  label: "Nomor",
                  hintext: '+62 ...',
                  controller: phoneProvider.phoneController,
                  errorText: phoneProvider.phoneErrorText,
                  onChanged: (newValue) {
                    phoneProvider.setPhoneValue(newValue);
                    updateButton();
                    print(phoneProvider.phoneValue);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonWidget(
                      onPressed: isButtonEnabled
                          ? () {
                              if (isEditing) {
                                contactProvider.editContact(
                                  selectedIndex,
                                  name: nameProvider.nameValue,
                                  phone: phoneProvider.phoneValue,
                                );
                                setState(() {
                                  // Bersihkan nilai setelah diubah
                                  nameProvider.nameController.clear();
                                  phoneProvider.phoneController.clear();
                                  isButtonEnabled = false;
                                  isEditing =
                                      false; // Reset ke mode tambah setelah edit selesai
                                });
                              } else {
                                contactProvider.addContact(
                                    name: nameProvider.nameValue,
                                    phone: phoneProvider.phoneValue);
                                setState(() {
                                  nameProvider.nameController.clear();
                                  phoneProvider.phoneController.clear();
                                  isButtonEnabled = false;
                                });
                              }
                            }
                          : null,
                      text: submitButtonText,
                    )
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
                        children: contactProvider.contacts
                            .asMap()
                            .entries
                            .map((entry) {
                          int index = entry.key;
                          ContactModels contact = entry.value;
                          String firstLetter =
                              contact.name.substring(0, 1).toUpperCase();
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
                              contact.name,
                              style: MyFonstStyle().m3BodyLargeName,
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  contact.phone,
                                  style: MyFonstStyle().m3BodyMedium,
                                ),
                              ],
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit,
                                      color: MyColorThema.m3syslightIcon),
                                  onPressed: () {
                                    ContactModels contact = contactProvider
                                        .getContactByIndex(index);
                                    nameProvider.nameController.text =
                                        contact.name;
                                    phoneProvider.phoneController.text =
                                        contact.phone;
                                    setState(() {
                                      isEditing = true;
                                      selectedIndex = index;
                                    });
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.delete,
                                    color: MyColorThema.m3syslightIcon,
                                  ),
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Konfirmasi Hapus'),
                                          content: const Text(
                                              'Apakah Anda yakin ingin menghapus kontak ini?'),
                                          actions: <Widget>[
                                            TextButton(
                                              child: const Text('Batal'),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            TextButton(
                                              child: const Text('Hapus'),
                                              onPressed: () {
                                                contactProvider
                                                    .delateContact(index);
                                                setState(() {});
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
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
