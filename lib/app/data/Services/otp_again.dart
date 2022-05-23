
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
Future<bool> sendOtpAgain(String phone) async {
  final Map<String, dynamic> Data = {
    'PhoneNo': phone,
   
  };
  final http.Response response = await http.post(
    Uri.parse('https://qclinicapi.hypertech-sa.com/Customer/SendVerfication'),
    headers: <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: jsonEncode(Data),
  );
  if (response.statusCode == 200) {
    print(jsonDecode(response.body));
    return true;
  }
  print(jsonDecode(response.statusCode.toString()));
  return Future.error(response.statusCode);
}
