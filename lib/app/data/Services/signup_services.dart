
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:qclinic/app/data/Model/User_data.dart';


// import 'package:lancera/app/data/models/user_model.dart';

Future<UserData> Register({
  
  String? name,
 
String? phone,
  String? email,
  String? password,

}) async {
  final Map<String, dynamic> Data = {
    'CustomerName': name,
    'PhoneNo': phone,
    'email': email,
    'Password':password
  };
  final http.Response response = await http.post(
    Uri.parse('https://qclinicapi.hypertech-sa.com/Customer/Register'),
    headers: <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: jsonEncode(Data),
  );
  // print(jsonDecode(response.body));
  // return User.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
     var jsonString = response.body;

    // then parse the JSON.
    print(jsonDecode(response.body));
    return userDataFromJson(jsonString);
  } else {
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    //return 'error';
    print(jsonDecode(response.body));
    print(jsonDecode(response.statusCode.toString()));
    return Future.error(response.statusCode);

    // throw Exception('Login Faild');
  }
}
