import 'dart:convert';

import 'package:flutter_openai_demo/models/choice.dart';
import 'package:flutter_openai_demo/models/usage.dart';

Smartphone smartphoneFromJson(String str) =>
    Smartphone.fromJson(json.decode(str));
String smartphoneToJson(Smartphone data) => json.encode(data.toJson());

class Smartphone {
  final String brand;
  final String model;

  final List<Choice> choice;
  final Usage usage;

  Smartphone({
    required this.choice,
    required this.usage,
    required this.brand,
    required this.model,
  });

  factory Smartphone.fromJson(Map<String, dynamic> json) {
    return Smartphone(
        brand: json['brand'],
        model: json['model'],
        choice:
            List<Choice>.from(json["choice"].map((x) => Choice.fromJson(x))),
        usage: Usage.fromJson(json["usage"]));
  }

  Map<String, dynamic> toJson() {
    return {
      'brand': brand,
      'model': model,
      'choice': List<dynamic>.from(choice.map((x) => x.toJson())),
      'usage': usage.toJson()
    };
  }
}
