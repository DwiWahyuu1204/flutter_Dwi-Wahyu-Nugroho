import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/logoku.png'),
        const Column(
          children: [
            Text(
              "Hallo I'm",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Dwi Wahyu Nugroho",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
