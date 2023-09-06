import 'package:flutter/material.dart';

class SoalEksplorasi extends StatefulWidget {
  const SoalEksplorasi({super.key});

  @override
  State<SoalEksplorasi> createState() => _SoalEksplorasiState();
}

class _SoalEksplorasiState extends State<SoalEksplorasi> {
  final List<String> items = [
    'Learn Flutter',
    'Learn ReactJS',
    'Learn VueJS',
    'Learn Tailwind CSS',
    'Learn UI/UX',
    'Learn Figma',
    'Learen Digital Marketing'
  ];
  int selectedIndex = 0;

  void pindahPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6200EE),
        title: Text(
          'My Flutter App',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
              ))
        ],
      ),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF03DAC5)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Information',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        onTap: pindahPage,

        unselectedItemColor: Colors.grey,
        backgroundColor:
            Color(0xFF6200EE), // Ganti dengan warna latar belakang yang sesuai.
      ),
    );
  }
}
