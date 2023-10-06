import 'package:flutter/material.dart';

class NewPageEksplorasi extends StatelessWidget {
  const NewPageEksplorasi({super.key});

  @override
  Widget build(BuildContext context) {
    final images =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final imageIndex = images['imageIndex'] as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Baru'),
      ),
      body: Column(children: [
        Image(image: AssetImage(imageIndex)),
        const Text("Ini Merupakan Gambar dari Page sebelumnya")
      ]),
    );
  }
}
