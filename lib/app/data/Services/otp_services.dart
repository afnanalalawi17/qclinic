import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:qclinic/app/data/Model/User_data.dart';


Future<UserData> OtpVerfication(String phone, String otp) async {
  final Map<String, dynamic> Data = {
    'PhoneNo': phone,
    'VerficationCode': otp,
  };
  final http.Response response = await http.post(
    Uri.parse('https://qclinicapi.hypertech-sa.com/Customer/Verify'),
    headers: <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: jsonEncode(Data),
  );
  // return User.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
    var jsonString = response.body;

    // then parse the JSON.
    print(jsonDecode(response.body));
    return userDataFromJson(jsonString);

    // then throw an exception.
    //throw Exception('......');
  }
  print(jsonDecode(response.statusCode.toString()));

  return Future.error(response.statusCode);
}
