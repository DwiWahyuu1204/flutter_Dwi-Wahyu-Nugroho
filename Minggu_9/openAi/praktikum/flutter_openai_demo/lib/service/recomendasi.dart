import 'dart:convert';

import 'package:flutter_openai_demo/constants/open_ai.dart';
import 'package:flutter_openai_demo/models/smartphone.dart';
import 'package:flutter_openai_demo/models/usage.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class RecommendationService {
  static Future<Smartphone> getRecomendasi(
      {required String price,
      required String camera,
      required String storage}) async {
    late Smartphone getData = Smartphone(
      choice: [],
      usage: Usage(completionTokens: 0, promptTokens: 0, totalTokens: 0),
      brand: '',
      model: '',
    );
    try {
      var url = Uri.parse('https://api.openai.com/v1/completions');

      Map<String, String> headers = {
        'Content-Type': 'application/json;charset=uTF-8',
        'Charset': 'utf-8',
        'Authorization': 'Bearer $apiKey'
      };

      final fromCurency = NumberFormat.currency(
          locale: 'id_ID', symbol: 'IDR', decimalDigits: 0);
      String getprice = fromCurency.format(int.parse(price));
      String promptData =
          "Rekomendasikan smartphone dengan harga maksimal \$${getprice}, kamera ${camera} MP, dan penyimpanan internal ${storage} GB.";

      final data = jsonEncode({
        'model': 'text-davinci-003',
        'prompt': promptData,
        'temperature': 0.4,
        'max_tokens': 64,
        'top_p': 1,
        'frequency_penalty': 0,
        'presence_penalty': 0
      });

      var response = await http.post(url, headers: headers, body: data);
      if (response.statusCode == 200) {
        getData = smartphoneFromJson(response.body);
      }
    } catch (e) {
      throw Exception('error request');
    }
    return getData;
  }
}
