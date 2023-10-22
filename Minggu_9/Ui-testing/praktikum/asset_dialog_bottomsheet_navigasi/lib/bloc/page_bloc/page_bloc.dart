import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../eksplorasi advance form/data.dart';
import '../../eksplorasi advance form/header_contacts.dart';
import '../../widget_global/button_widget.dart';
import '../../widget_global/drawer_widget.dart';
import '../../widget_global/my_color_thema.dart';
import '../../widget_global/my_fonts_style.dart';
import '../../widget_global/textfield_widget.dart';
import '../form_number_cubit/phone_bloc_cubit.dart';
import '../form_username_bloc/name_bloc_bloc.dart';

class PageBloc extends StatefulWidget {
  const PageBloc({super.key});

  @override
  State<PageBloc> createState() => _PageBlocState();
}

class _PageBlocState extends State<PageBloc> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nomorTeleponController = TextEditingController();
  final List<Data> contacts = [];

  bool isButtonEnabled = false;
  bool isEditing = false;
  int selectedIndex = -1;

  void updateButton() {
    bool isNameFilled = namaController.text.isNotEmpty;
    bool isPhoneNumberFilled = nomorTeleponController.text.isNotEmpty;

    setState(() {
      isButtonEnabled = isNameFilled && isPhoneNumberFilled;
    });
  }

  @override
  void initState() {
    super.initState();

    // Menambahkan listener ke kedua kolom teks
    namaController.addListener(updateButton);
    nomorTeleponController.addListener(updateButton);
  }

  @override
  void dispose() {
    // Membersihkan listener ketika widget di dispose
    namaController.removeListener(updateButton);
    nomorTeleponController.removeListener(updateButton);
    namaController.dispose();
    nomorTeleponController.dispose();
    super.dispose();
  }

  void editContact(int index) {
    namaController.text = contacts[index].title;
    nomorTeleponController.text = contacts[index].subtitle;
    setState(() {
      isEditing = true;
      selectedIndex = index;
    });
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
        title: const Text("soal bloc"),
        centerTitle: true,
      ),
      drawer: const drawer_widget(),
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
                BlocBuilder<FormUsernameBloc, FormUsernameState>(
                  builder: (context, state) {
                    return TextFieldWidget(
                      label: "Nama",
                      hintext: 'Insert Your Name',
                      controller: namaController,
                      errorText: context.read<FormUsernameBloc>().state.message,
                      onChanged: (value) {
                        context.read<FormUsernameBloc>().add(
                              FormInputUsernameEvent(
                                value: value,
                              ),
                            );

                        print('dari name $value');
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                BlocBuilder<FormNumberCubit, FormNumberState>(
                  builder: (context, state) {
                    return TextFieldWidget(
                      label: "Nomor",
                      hintext: '+62 ...',
                      controller: nomorTeleponController,
                      errorText:
                          context.read<FormNumberCubit>().messageErrorPhone,
                      onChanged: (value) {
                        context.read<FormNumberCubit>().validationPhone(value);

                        print('dari phone $value');
                      },
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonWidget(
                      onPressed: isButtonEnabled
                          ? () {
                              String nama = namaController.text;
                              String nomorTelepon = nomorTeleponController.text;
                              if (isEditing) {
                                contacts[selectedIndex].title = nama;
                                contacts[selectedIndex].subtitle = nomorTelepon;
                                isEditing = false;
                              } else {
                                Data newData = Data(nama, nomorTelepon);
                                contacts.add(newData);
                              }
                              namaController.clear();
                              nomorTeleponController.clear();
                              setState(() {
                                isButtonEnabled = false;
                              });
                            }
                          : null,
                      text: submitButtonText,
                    ),
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
                          Data contact = entry.value;
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
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  contact.subtitle,
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
