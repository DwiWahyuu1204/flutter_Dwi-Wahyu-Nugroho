import 'package:flutter/material.dart';

class Prioritas1No1 extends StatefulWidget {
  const Prioritas1No1({super.key});

  @override
  State<Prioritas1No1> createState() => _Prioritas1No1State();
}

class _Prioritas1No1State extends State<Prioritas1No1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MaterialApp',
          style: TextStyle(fontSize: 25),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "This Is MaterialApp",
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
