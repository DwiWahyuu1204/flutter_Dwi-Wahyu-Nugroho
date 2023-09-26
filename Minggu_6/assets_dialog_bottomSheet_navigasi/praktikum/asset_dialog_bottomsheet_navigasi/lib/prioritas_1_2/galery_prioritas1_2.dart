import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> images = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
  ];

  GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Gambar'),
        actions: [
          IconButton(
              onPressed: () {
                /// Untuk berpindah ke soal eksplorasi
                Navigator.pushNamed(context, '/GaleryEksplorasi');
              },
              icon: const Icon(Icons.navigate_next_sharp))
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _showImageBottomSheet(context, images[index]);
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images[index]), fit: BoxFit.cover)),
            ),
          );
        },
      ),
    );
  }
}

void _showImageBottomSheet(BuildContext context, String image) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              showImageDialog(context, image);
            },
            child: const Text('Tampilkan pada ShowDialog'),
          ),
        ],
      );
    },
  );
}

void showImageDialog(BuildContext context, String image) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(image),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.pushNamed(context, '/new_page');
                  },
                  child: const Text('Ya'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Tidak'),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
