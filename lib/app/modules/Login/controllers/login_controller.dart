import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>(); // Form
  late TextEditingController phoneController;
  var phone = '';
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
        phoneController = TextEditingController();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
        phoneController.dispose();

  }
  String? validateMobile(String value) {
    String patttern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "الرجاء ادخال رقم الهاتف";
    } else if (!regExp.hasMatch(value)) {
      return "الرجاء ادخال رقم هاتف صحيح";
    }
    return null;
  }
    void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    // auth();
  } 
  void increment() => count.value++;
}
