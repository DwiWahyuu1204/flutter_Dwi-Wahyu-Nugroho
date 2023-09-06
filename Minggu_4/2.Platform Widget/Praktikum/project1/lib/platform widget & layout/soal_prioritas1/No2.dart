import 'package:flutter/material.dart';
import 'package:project1/platform%20widget%20&%20layout/soal_prioritas1/model.dart';

class Prioritas1No2 extends StatefulWidget {
  const Prioritas1No2({super.key});

  @override
  State<Prioritas1No2> createState() => _Prioritas1No2State();
}

class _Prioritas1No2State extends State<Prioritas1No2> {
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
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final username = data[index]['username'] ?? " ";
            final phone = data[index]['phone'] ?? " ";
            final profil = username.isNotEmpty ? username[0] : '';
            return ListTile(
                title: Text(username),
                subtitle: Text(phone),
                leading: CircleAvatar(
                  child: Text(
                    profil,
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.green,
                ));
          }),
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
