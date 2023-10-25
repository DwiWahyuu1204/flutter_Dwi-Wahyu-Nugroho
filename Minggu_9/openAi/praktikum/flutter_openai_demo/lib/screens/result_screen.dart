import 'package:flutter/material.dart';
import 'package:flutter_openai_demo/models/smartphone.dart';

class ResultScreen extends StatelessWidget {
  final Smartphone smartphoneRespone;
  const ResultScreen({super.key, required this.smartphoneRespone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil rekomendasi'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(smartphoneRespone.choice[0].text),
          )
        ],
      ),
    );
  }
}
