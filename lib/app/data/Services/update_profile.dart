import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:qclinic/app/data/Model/User_data.dart';


Future<UserData> Update_ProfileUser(
    String name, String Password, String phone, dynamic token) async {
  final Map<String, dynamic> Data = {
    'CustomerName': name,
    'Password': Password,
    'PhoneNo': phone,
  };
  final http.Response response = await http.post(
    Uri.parse('https://qclinicapi.hypertech-sa.com/Customer/UpdateProfile'),
    headers: <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    },
    body: jsonEncode(Data),
  );
  if (response.statusCode == 200) {
     var jsonString = response.body;
    print(jsonDecode(response.body));
    return userDataFromJson(jsonString);
  }
  print(jsonDecode(response.statusCode.toString()));
  print(jsonDecode(response.body));
  print(token);
  return Future.error(response.statusCode);
}
