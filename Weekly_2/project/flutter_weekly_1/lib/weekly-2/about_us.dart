import 'package:flutter/material.dart';
import 'package:flutter_weekly_1/weekly-2/card_widget.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text(
          'About Us',
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          'Program Jasa Yang Ditawarkan',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Row(
          children: [
            CardWidget(
                image: 'assets/images/desain-grafis.jpeg',
                title: 'Jasa Desain Grafis',
                description:
                    'Layanan desain grafis profesional untuk kebutuhan bisnis Anda.'),
            CardWidget(
                image: 'assets/images/flutter.jpg',
                title: 'Pembuatan Aplikasi Flutter',
                description:
                    'Kami menyediakan pengembangan aplikasi Flutter berkualitas tinggi.'),
          ],
        )
      ]),
    );
  }
}
