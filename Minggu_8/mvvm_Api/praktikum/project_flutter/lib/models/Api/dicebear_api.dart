import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DicebearApi {
  Future<String> fatchDicebear({required String avatarstyle}) async {
    try {
      final response = await Dio()
          .get('https://api.dicebear.com/7.x/pixel-art/svg?seed=$avatarstyle');
      debugPrint(avatarstyle);
      return response.data as String;
    } catch (e) {
      throw Exception(e);
    }
  }
}
