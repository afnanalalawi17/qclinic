
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:qclinic/app/data/Model/User_data.dart';


Future<UserData> Login(String PhoneNo, String password) async {
  final Map<String, dynamic> loginData = {
    'PhoneNo': PhoneNo,
    'Password': password,
 

  };
  final http.Response response = await http.post(
    Uri.parse('https://qclinicapi.hypertech-sa.com/Customer/Login'),
    headers: <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    
    },
    body: jsonEncode(loginData),
  );
  // return User.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
    var jsonString = response.body;

    // then parse the JSON.

    print(jsonDecode(response.statusCode.toString()));
    print(jsonDecode(response.body.toString()));
    print('login Success from api');

    return userDataFromJson(jsonString);

    // then throw an exception.

    //throw Exception('......');
  }

  print(jsonDecode(response.statusCode.toString()));
  print(jsonDecode(response.body.toString()));
  print('error login from api');

  return Future.error(response.statusCode);
}
