import 'package:flutter/material.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/Fotoku.jpg', width: 200),
        const Column(
          children: [
            Text(
              "Jika Bukan Hari ini Kapan Lagi",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Jika Bukan Kamu siapa lagi",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Yuk Join Sekarang Di",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "Alterra Academy",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
