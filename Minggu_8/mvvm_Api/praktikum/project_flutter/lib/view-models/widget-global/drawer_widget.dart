import 'package:flutter/material.dart';

class drawer_widget extends StatelessWidget {
  const drawer_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Center(
            child: Text(
              "Alterra Academy",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
          ),
        ),
        ListTile(
          title: const Center(child: Text('Contact')),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        Divider(),
        ListTile(
          title: const Center(child: Text('Galery')),
          onTap: () {
            Navigator.pushNamed(context, 'galery');
          },
        ),
      ],
    ));
  }
}
